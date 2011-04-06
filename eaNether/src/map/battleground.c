// Copyright (c) Athena Dev Teams - Licensed under GNU GPL
// For more information, see LICENCE in the main folder

#include "../common/cbasetypes.h"
#include "../common/timer.h"
#include "../common/malloc.h"
#include "../common/nullpo.h"
#include "../common/showmsg.h"
#include "../common/socket.h"
#include "../common/strlib.h"
#include "../common/utils.h"

#include "battleground.h"
#include "battle.h"
#include "clif.h"
#include "map.h"
#include "npc.h"
#include "pc.h"
#include "pet.h"
#include "homunculus.h"
#include "mercenary.h"
#include "elemental.h"
#include "party.h"
#include "log.h"
#include "quest.h"
#include "skill.h"

#include <string.h>
#include <stdio.h>

static DBMap* bg_team_db; // int bg_id -> struct battleground_data*
static unsigned int bg_team_counter = 0; // Next bg_id
struct guild bg_guild[13]; // Temporal fake guild information
static const unsigned int bg_colors[13] = { 0x0000FF, 0xFF0000, 0x00FF00, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF };

#define BLUE_SKULL 8965
#define RED_SKULL 8966
#define GREEN_SKULL 8967

int bg_member_removeskulls(struct map_session_data *sd)
{
	int n;
	nullpo_ret(sd);
	if( (n = pc_search_inventory(sd,BLUE_SKULL)) >= 0 )
		pc_delitem(sd,n,sd->status.inventory[n].amount,0,2);
	if( (n = pc_search_inventory(sd,RED_SKULL)) >= 0 )
		pc_delitem(sd,n,sd->status.inventory[n].amount,0,2);
	if( (n = pc_search_inventory(sd,GREEN_SKULL)) >= 0 )
		pc_delitem(sd,n,sd->status.inventory[n].amount,0,2);

	return 1;
}

int bg_checkskill(struct battleground_data *bg, int id)
{
	int idx = id - GD_SKILLBASE;
	if( idx < 0 || idx >= MAX_GUILDSKILL || !bg->g )
		return 0;
	return bg->g->skill[idx].lv;
}

int bg_block_skill_end(int tid, unsigned int tick, int id, intptr data)
{
	struct battleground_data *bg;
	char output[128];
	int idx = battle_config.guild_skills_separed_delay ? (int)data - GD_SKILLBASE : 0;

	if( (bg = bg_team_search(id)) == NULL )
		return 1;

	if( idx < 0 || idx >= MAX_GUILDSKILL )
	{
		ShowError("bg_block_skill_end invalid skillnum %d.\n", (int)data);
		return 0;
	}

	if( tid != bg->skill_block_timer[idx] )
	{
		ShowError("bg_block_skill_end %d != %d.\n", bg->skill_block_timer[idx], tid);
		return 0;
	}

	sprintf(output, "%s : Guild Skill %s Ready!!", bg->g->name, skill_get_desc((int)data));
	clif_bg_message(bg, bg->g->name, output, strlen(output) + 1);
	bg->skill_block_timer[idx] = INVALID_TIMER;

	return 1;
}

void bg_block_skill_status(struct battleground_data *bg, int skillnum)
{
	const struct TimerData * td;
	char output[128];
	int seconds, idx;

	idx = battle_config.guild_skills_separed_delay ? skillnum - GD_SKILLBASE : 0;
	if( bg == NULL || bg->g == NULL || idx < 0 || idx >= MAX_GUILDSKILL || bg->skill_block_timer[idx] == INVALID_TIMER )
		return;

	if( (td = get_timer(bg->skill_block_timer[idx])) == NULL )
		return;

	seconds = DIFF_TICK(td->tick,gettick())/1000;
	sprintf(output, "%s : Cannot use team skill %s. %d seconds remaining...", bg->g->name, skill_get_desc(skillnum), seconds);
	clif_bg_message(bg, bg->g->name, output, strlen(output) + 1);
}

void bg_block_skill_start(struct battleground_data *bg, int skillnum, int time)
{
	int idx = battle_config.guild_skills_separed_delay ? skillnum - GD_SKILLBASE : 0;
	if( bg == NULL || idx < 0 || idx >= MAX_GUILDSKILL )
		return;

	if( bg->skill_block_timer[idx] != INVALID_TIMER )
		delete_timer(bg->skill_block_timer[idx], bg_block_skill_end);

	bg->skill_block_timer[idx] = add_timer(gettick() + time, bg_block_skill_end, bg->bg_id, skillnum);
}

struct battleground_data* bg_team_search(int bg_id)
{ // Search a BG Team using bg_id
	if( !bg_id ) return NULL;
	return (struct battleground_data *)idb_get(bg_team_db, bg_id);
}

struct map_session_data* bg_getavailablesd(struct battleground_data *bg)
{
	int i;
	nullpo_retr(NULL, bg);
	ARR_FIND(0, MAX_BG_MEMBERS, i, bg->members[i].sd != NULL);
	return( i < MAX_BG_MEMBERS ) ? bg->members[i].sd : NULL;
}

int bg_team_delete(int bg_id)
{ // Deletes BG Team from db
	int i;
	struct map_session_data *sd;
	struct battleground_data *bg = bg_team_search(bg_id);
	struct guild *g;

	if( bg == NULL ) return 0;
	for( i = 0; i < MAX_BG_MEMBERS; i++ )
	{
		if( (sd = bg->members[i].sd) == NULL )
			continue;

		bg_send_dot_remove(sd);
		sd->state.bg_id = 0;
		sd->state.bg_afk = 0;
		sd->state.bmaster_flag = NULL;
		bg_member_removeskulls(sd);

		if( sd->status.guild_id && (g = guild_search(sd->status.guild_id)) != NULL )
		{
			clif_guild_belonginfo(sd,g);
			clif_guild_basicinfo(sd);
			clif_guild_allianceinfo(sd);
			clif_guild_memberlist(sd);
			clif_guild_skillinfo(sd);
		}
		else
			clif_bg_leave_single(sd, sd->status.name, "Leaving Battleground...");

		clif_charnameupdate(sd);
		clif_guild_emblem_area(&sd->bl);
	}

	for( i = 0; i < MAX_GUILDSKILL; i++ )
	{
		if( bg->skill_block_timer[i] == INVALID_TIMER )
			continue;
		delete_timer(bg->skill_block_timer[i], bg_block_skill_end);
	}

	idb_remove(bg_team_db, bg_id);
	return 1;
}

int bg_team_warp(int bg_id, unsigned short mapindex, short x, short y)
{ // Warps a Team
	int i;
	struct battleground_data *bg = bg_team_search(bg_id);
	if( bg == NULL ) return 0;
	if( mapindex == 0 )
	{
		mapindex = bg->mapindex;
		x = bg->x;
		y = bg->y;
	}

	for( i = 0; i < MAX_BG_MEMBERS; i++ )
		if( bg->members[i].sd != NULL ) pc_setpos(bg->members[i].sd, mapindex, x, y, CLR_TELEPORT);
	return 1;
}

int bg_reveal_pos(struct block_list *bl, va_list ap)
{
	struct map_session_data *pl_sd, *sd = NULL;
	int flag, color;

	pl_sd = (struct map_session_data *)bl;
	sd = va_arg(ap,struct map_session_data *); // Source
	flag = va_arg(ap,int);
	color = va_arg(ap,int);

	if( pl_sd->state.bg_id == sd->state.bg_id )
		return 0; // Same Team

	clif_viewpoint(pl_sd,sd->bl.id,flag,sd->bl.x,sd->bl.y,sd->bl.id,color);
	return 0;
}

int bg_send_dot_remove(struct map_session_data *sd)
{
	struct battleground_data *bg;
	int m;

	if( sd && sd->state.bg_id && (bg = bg_team_search(sd->state.bg_id)) != NULL )
	{
		clif_bg_xy_remove(sd);
		if( bg->reveal_pos && (m = map_mapindex2mapid(bg->mapindex)) == sd->bl.m )
			map_foreachinmap(bg_reveal_pos,m,BL_PC,sd,2,0xFFFFFF);
	}
	return 0;
}

int bg_team_join(int bg_id, struct map_session_data *sd)
{ // Player joins team
	int i;
	struct battleground_data *bg = bg_team_search(bg_id);
	struct map_session_data *pl_sd;

	if( bg == NULL || sd == NULL || sd->state.bg_id ) return 0;

	ARR_FIND(0, MAX_BG_MEMBERS, i, bg->members[i].sd == NULL);
	if( i == MAX_BG_MEMBERS ) return 0; // No free slots

	pc_update_last_action(sd,0); // Start count from here...
	sd->state.bg_id = bg_id;
	sd->state.bg_kills = 0;
	sd->state.bg_afk = 0;
	bg->members[i].sd = sd;
	bg->members[i].x = sd->bl.x;
	bg->members[i].y = sd->bl.y;
	bg->count++;
	if( battle_config.bg_ranked_mode && sd->status.bgstats.rank_games < battle_config.bg_ranked_max_games && DIFF_TICK(last_tick,bg->creation_tick) < 60 )
	{
		char output[128];
		bg->members[i].ranked = true;
		sd->status.bgstats.rank_games++;
		sprintf(output,"-- RANKED BATTLEGROUND MATCH %d OF %d --", sd->status.bgstats.rank_games, battle_config.bg_ranked_max_games);
		clif_displaymessage(sd->fd,output);
	}

	if( bg->leader_char_id == 0 )
	{ // First Join = Team Leader
		bg->leader_char_id = sd->status.char_id;
		sd->state.bmaster_flag = bg;
	}

	guild_send_dot_remove(sd);
	clif_bg_belonginfo(sd);
	// clif_bg_emblem(sd, bg->g);
	clif_charnameupdate(sd);

	for( i = 0; i < MAX_BG_MEMBERS; i++ )
	{
		if( (pl_sd = bg->members[i].sd) == NULL )
			continue;
		clif_guild_basicinfo(pl_sd);
		clif_bg_emblem(pl_sd, bg->g);
		clif_bg_memberlist(pl_sd);
		if( pl_sd != sd )
			clif_hpmeter_single(sd->fd, pl_sd->bl.id, pl_sd->battle_status.hp, pl_sd->battle_status.max_hp);
	}

	clif_guild_emblem_area(&sd->bl);
	clif_bg_hp(sd);
	clif_bg_xy(sd);

	return 1;
}

int bg_team_leave(struct map_session_data *sd, int flag)
{ // Single Player leaves team
	int i, bg_id;
	struct battleground_data *bg;
	struct map_session_data *pl_sd;
	struct guild *g;

	if( sd == NULL || !sd->state.bg_id )
		return 0;

	// Packets
	clif_bg_leave_single(sd, sd->status.name, "Leaving Battle...");
	bg_send_dot_remove(sd);
	bg_id = sd->state.bg_id;
	sd->state.bg_id = 0;
	sd->state.bg_kills = 0;
	sd->state.bg_afk = 0;
	sd->state.bmaster_flag = NULL;
	bg_member_removeskulls(sd);

	if( sd->status.guild_id && (g = guild_search(sd->status.guild_id)) != NULL )
	{ // Refresh Guild Information
		clif_guild_belonginfo(sd, g);
		clif_guild_basicinfo(sd);
		clif_guild_allianceinfo(sd);
		clif_guild_memberlist(sd);
		clif_guild_skillinfo(sd);
		clif_guild_emblem(sd, g);
	}

	clif_charnameupdate(sd);
	clif_guild_emblem_area(&sd->bl);

	if( (bg = bg_team_search(bg_id)) == NULL )
		return 0;

	ARR_FIND(0, MAX_BG_MEMBERS, i, bg->members[i].sd == sd);
	if( i < MAX_BG_MEMBERS ) // Removes member from BG
		memset(&bg->members[i], 0, sizeof(bg->members[0]));
	if( bg->leader_char_id == sd->status.char_id )
		bg->leader_char_id = 0;

	bg->count--;
	for( i = 0; i < MAX_BG_MEMBERS; i++ )
	{ // Update other BG members
		if( (pl_sd = bg->members[i].sd) == NULL )
			continue;
		switch( flag )
		{
		case 2: clif_bg_expulsion_single(pl_sd, sd->status.name, "Kicked by Team Leader (AFK Report)..."); break;
		case 1: clif_bg_expulsion_single(pl_sd, sd->status.name, "User has quit the game..."); break;
		case 0: clif_bg_leave_single(pl_sd, sd->status.name, "Leaving Battle..."); break;
		}

		if( !bg->leader_char_id )
		{ // Set new Leader first on the list
			bg->leader_char_id = pl_sd->status.char_id;
			pl_sd->state.bmaster_flag = bg;
		}

		clif_guild_basicinfo(pl_sd);
		clif_bg_emblem(pl_sd, bg->g);
		clif_bg_memberlist(pl_sd);
	}

	if( bg->logout_event[0] && flag )
		npc_event(sd, bg->logout_event, 0);

	return bg->count;
}

int bg_member_respawn(struct map_session_data *sd)
{ // Respawn after killed
	struct battleground_data *bg;
	if( sd == NULL || !pc_isdead(sd) || !sd->state.bg_id || (bg = bg_team_search(sd->state.bg_id)) == NULL )
		return 0;
	if( bg->mapindex == 0 )
		return 0; // Respawn not handled by Core
	pc_setpos(sd, bg->mapindex, bg->x, bg->y, CLR_OUTSIGHT);
	status_revive(&sd->bl, 1, 100);

	return 1; // Warped
}

struct guild* bg_guild_get(int bg_id)
{ // Return Fake Guild for BG Members
	struct battleground_data *bg = bg_team_search(bg_id);
	if( bg == NULL ) return NULL;
	return bg->g;
}

int bg_create(unsigned short mapindex, short rx, short ry, int guild_index, const char *ev, const char *dev)
{
	struct battleground_data *bg;
	int i;
	bg_team_counter++;

	CREATE(bg, struct battleground_data, 1);
	bg->bg_id = bg_team_counter;
	bg->creation_tick = last_tick;
	bg->count = 0;
	bg->g = &bg_guild[guild_index];
	bg->mapindex = mapindex;
	bg->x = rx;
	bg->y = ry;
	safestrncpy(bg->logout_event, ev, sizeof(bg->logout_event));
	safestrncpy(bg->die_event, dev, sizeof(bg->die_event));
	for( i = 0; i < MAX_GUILDSKILL; i++ )
		bg->skill_block_timer[i] = INVALID_TIMER;

	memset(&bg->members, 0, sizeof(bg->members));
	bg->color = bg_colors[guild_index];

	idb_put(bg_team_db, bg_team_counter, bg);

	return bg->bg_id;
}

int bg_team_get_id(struct block_list *bl)
{
	if( bl )
	{
		switch( bl->type )
		{
			case BL_PC:
				return ((TBL_PC*)bl)->state.bg_id;
			case BL_PET:
				if( ((TBL_PET*)bl)->msd )
					return ((TBL_PET*)bl)->msd->state.bg_id;
				break;
			case BL_MOB:
			{
				struct map_session_data *msd;
				struct mob_data *md = (TBL_MOB*)bl;
				if( md->special_state.ai && (msd = map_id2sd(md->master_id)) != NULL )
					return msd->state.bg_id;
				return md->state.bg_id;
			}
			case BL_HOM:
				if( ((TBL_HOM*)bl)->master )
					return ((TBL_HOM*)bl)->master->state.bg_id;
				break;
			case BL_MER:
				if( ((TBL_MER*)bl)->master )
					return ((TBL_MER*)bl)->master->state.bg_id;
				break;
			case BL_ELEM:
				if( ((TBL_ELEM*)bl)->master )
					return ((TBL_ELEM*)bl)->master->state.bg_id;
				break;
			case BL_SKILL:
				return ((TBL_SKILL*)bl)->group->bg_id;
			case BL_NPC:
				return ((TBL_NPC*)bl)->u.scr.bg_id;
		}
	}

	return 0;
}

int bg_send_message(struct map_session_data *sd, const char *mes, int len)
{
	struct battleground_data *bg;

	nullpo_ret(sd);
	if( sd->state.bg_id == 0 || (bg = bg_team_search(sd->state.bg_id)) == NULL )
		return 0;
	clif_bg_message(bg, sd->status.name, mes, len);
	return 0;
}

int bg_send_xy_timer_sub(DBKey key, void *data, va_list ap)
{
	struct battleground_data *bg = (struct battleground_data *)data;
	struct map_session_data *sd;
	int i, m;
	nullpo_ret(bg);
	m = map_mapindex2mapid(bg->mapindex);
	bg->reveal_flag = !bg->reveal_flag; // Switch

	for( i = 0; i < MAX_BG_MEMBERS; i++ )
	{
		if( (sd = bg->members[i].sd) == NULL )
			continue;
		if( sd->bl.x != bg->members[i].x || sd->bl.y != bg->members[i].y )
		{ // xy update
			bg->members[i].x = sd->bl.x;
			bg->members[i].y = sd->bl.y;
			clif_bg_xy(sd);
		}
		if( bg->reveal_pos && bg->reveal_flag && sd->bl.m == m ) // Reveal each 4 seconds
			map_foreachinmap(bg_reveal_pos,m,BL_PC,sd,1,bg->color);
		if( battle_config.bg_idle_announce && !sd->state.bg_afk && DIFF_TICK(last_tick, sd->idletime) >= battle_config.bg_idle_announce && bg->g )
		{ // Idle announces
			char output[128];
			sd->state.bg_afk = 1;
			sprintf(output, "%s : %s aparentemente está Ausente. Alerta, poderá ser Expulso das Batalhas Campais com @reportafk!", bg->g->name, sd->status.name);

			clif_bg_message(bg, bg->g->name, output, strlen(output) + 1);
		}
	}

	return 0;
}

int bg_send_xy_timer(int tid, unsigned int tick, int id, intptr data)
{
	bg_team_db->foreach(bg_team_db, bg_send_xy_timer_sub, tick);
	return 0;
}

void bg_guild_build_data(void)
{
	int i, j, k, skill;
	memset(&bg_guild, 0, sizeof(bg_guild));
	for( i = 1; i <= 13; i++ )
	{ // Emblem Data - Guild ID's
		FILE* fp = NULL;
		char path[256];

		j = i - 1;
		bg_guild[j].emblem_id = 1; // Emblem Index
		bg_guild[j].guild_id = SHRT_MAX - j;
		bg_guild[j].guild_lv = 1;
		bg_guild[j].max_member = MAX_BG_MEMBERS;

		// Skills
		if( j < 3 )
		{ // Clan Skills
			for( k = 0; k < MAX_GUILDSKILL; k++ )
			{
				skill = k + GD_SKILLBASE;
				bg_guild[j].skill[k].id = skill;
				switch( skill )
				{
				case GD_GLORYGUILD:
					bg_guild[j].skill[k].lv = 0;
					break;
				case GD_APPROVAL:
				case GD_KAFRACONTRACT:
				case GD_GUARDRESEARCH:
				case GD_BATTLEORDER:
				case GD_RESTORE:
				case GD_EMERGENCYCALL:
				case GD_DEVELOPMENT:
					bg_guild[j].skill[k].lv = 1;
					break;
				case GD_GUARDUP:
				case GD_REGENERATION:
					bg_guild[j].skill[k].lv = 3;
					break;
				case GD_LEADERSHIP:
				case GD_GLORYWOUNDS:
				case GD_SOULCOLD:
				case GD_HAWKEYES:
					bg_guild[j].skill[k].lv = 5;
					break;
				case GD_EXTENSION:
					bg_guild[j].skill[k].lv = 10;
					break;
				}
			}
		}
		else
		{ // Other Data
			snprintf(bg_guild[j].name, NAME_LENGTH, "Team %d", i - 3); // Team 1, Team 2 ... Team 10
			strncpy(bg_guild[j].master, bg_guild[j].name, NAME_LENGTH);
			snprintf(bg_guild[j].position[0].name, NAME_LENGTH, "%s Leader", bg_guild[j].name);
			strncpy(bg_guild[j].position[1].name, bg_guild[j].name, NAME_LENGTH);
		}

		sprintf(path, "%s/emblems/bg_%d.ebm", db_path, i);
		if( (fp = fopen(path, "rb")) != NULL )
		{
			fseek(fp, 0, SEEK_END);
			bg_guild[j].emblem_len = ftell(fp);
			fseek(fp, 0, SEEK_SET);
			fread(&bg_guild[j].emblem_data, 1, bg_guild[j].emblem_len, fp);
			fclose(fp);
			ShowStatus("Completamente Lido o Arquivo de Emblema '"CL_WHITE"%s"CL_RESET"'.\n", path);
		}
	}

	// Guild Data - Guillaume
	strncpy(bg_guild[0].name, "Time Azul", NAME_LENGTH);
	strncpy(bg_guild[0].master, "General Guillaume Marollo", NAME_LENGTH);
	strncpy(bg_guild[0].position[0].name, "Líder do Time Azul", NAME_LENGTH);
	strncpy(bg_guild[0].position[1].name, "Time Azul", NAME_LENGTH);

	// Guild Data - Croix
	strncpy(bg_guild[1].name, "Time Vermelho", NAME_LENGTH);
	strncpy(bg_guild[1].master, "Prince Croix Marollo", NAME_LENGTH);
	strncpy(bg_guild[1].position[0].name, "Líder do Time Vermelho", NAME_LENGTH);
	strncpy(bg_guild[1].position[1].name, "Time Vermelho", NAME_LENGTH);

	// Guild Data - Traitors
	strncpy(bg_guild[2].name, "Time Verde", NAME_LENGTH);
	strncpy(bg_guild[2].master, "Traidores do Reino de Maroll", NAME_LENGTH);
	strncpy(bg_guild[2].position[0].name, "Líder do Time Verde", NAME_LENGTH);
	strncpy(bg_guild[2].position[1].name, "Time Verde", NAME_LENGTH);
}

/* Commented - Still under testing
void bg_randomize_teams(int bg_id1, int bg_id2)
{
	struct map_session_data *pl_sd[MAX_BG_MEMBERS * 2];
	struct battleground_data *bg[2];
	int i, j, k, c = 0, c2;

	if( (bg[0] = bg_team_search(bg_id1)) == NULL || (bg[1] = bg_team_search(bg_id2)) == NULL )
		return;

	// Build Full List
	for( j = 0; j < 2; j++ )
	{
		for( i = 0; i < MAX_BG_MEMBERS; i++ )
		{
			if( bg[j]->members[i].sd == NULL )
				continue;

			pl_sd[c] = bg[j]->members[i].sd; // Store Player
			c++;
		}
	}
	
	j = 0; // Team Index
	while( c > 0 )
	{
		k = 1 + rand()%c;
		for( i = 0, c2 = 0; i < MAX_BG_MEMBERS * 2; i++ )
		{
			if( pl_sd[i] == NULL )
				continue;

			c2++;
			if( c2 == k ) break; // Found
		}

		if( i == MAX_BG_MEMBERS * 2)
			return; // Failure - should not happen

		if( pl_sd[i]->state.bg_id != bg[j]->bg_id )
		{ // Changing Team
			bg_team_leave(pl_sd[i],0);
			bg_team_join(bg[j]->bg_id,pl_sd[i]);
		} // else Stay

		if( j = 0 ) j = 1; else j = 0; // Team Index
		pl_sd[i] = NULL;
		c--;
	}
}
*/

void bg_team_getitem(int bg_id, int nameid, int amount)
{
	struct battleground_data *bg;
	struct map_session_data *sd;
	struct item_data *id;
	struct item it;
	int get_amount, i, j, flag, rank = 0;

	if( amount < 1 || (bg = bg_team_search(bg_id)) == NULL || (id = itemdb_exists(nameid)) == NULL )
		return;
	if( nameid != 7828 && nameid != 7829 && nameid != 7773 )
		return;
	if( battle_config.bg_reward_rates != 100 )
		amount = amount * battle_config.bg_reward_rates / 100;

	memset(&it, 0, sizeof(it));
	it.nameid = nameid;
	it.identify = 1;

	for( j = 0; j < MAX_BG_MEMBERS; j++ )
	{
		if( (sd = bg->members[j].sd) == NULL )
			continue;
		if( battle_config.bg_ranking_bonus )
		{
			rank = 0;
			ARR_FIND(0,MAX_FAME_LIST,i,bgrank_fame_list[i].id == sd->status.char_id);
			if( i < MAX_FAME_LIST )
				rank = 1;
			else
			{
				ARR_FIND(0,MAX_FAME_LIST,i,bg_fame_list[i].id == sd->status.char_id);
				if( i < MAX_FAME_LIST )
					rank = 1;
			}
		}

		get_amount = amount;
		if( rank ) get_amount += battle_config.bg_ranking_bonus * get_amount / 100;

		if( (flag = pc_additem(sd,&it,get_amount)) )
			clif_additem(sd,0,0,flag);
		if( log_config.enable_logs&LOG_SCRIPT_TRANSACTIONS )
			log_pick_pc(sd, "N", nameid, get_amount, NULL, it.serial);
	}
}

void bg_team_get_kafrapoints(int bg_id, int amount)
{
	struct battleground_data *bg;
	struct map_session_data *sd;
	int i, j, get_amount, rank = 0;

	if( (bg = bg_team_search(bg_id)) == NULL )
		return;

	if( battle_config.bg_reward_rates != 100 )
		amount = amount * battle_config.bg_reward_rates / 100;

	for( i = 0; i < MAX_BG_MEMBERS; i++ )
	{
		if( (sd = bg->members[i].sd) == NULL )
			continue;
		if( battle_config.bg_ranking_bonus )
		{
			rank = 0;
			ARR_FIND(0,MAX_FAME_LIST,j,bgrank_fame_list[j].id == sd->status.char_id);
			if( j < MAX_FAME_LIST )
				rank = 1;
			else
			{
				ARR_FIND(0,MAX_FAME_LIST,j,bg_fame_list[j].id == sd->status.char_id);
				if( j < MAX_FAME_LIST )
					rank = 1;
			}
		}

		get_amount = amount;
		if( rank ) get_amount += battle_config.bg_ranking_bonus * get_amount / 100;
		pc_getcash(sd,0,get_amount);
	}
}

/* ==============================================================
   bg_arena (0 EoS | 1 Boss | 2 TI | 3 CTF | 4 TD | 5 SC | 6 CON)
   bg_result (0 Won | 1 Tie | 2 Lost)
   ============================================================== */
void bg_team_rewards(int bg_id, int nameid, int amount, int kafrapoints, int quest_id, const char *var, int add_value, int bg_arena, int bg_result)
{
	struct battleground_data *bg;
	struct map_session_data *sd;
	struct item_data *id;
	struct item it;
	int i, j, flag, fame, get_amount, rank = 0, type;

	if( amount < 1 || (bg = bg_team_search(bg_id)) == NULL || (id = itemdb_exists(nameid)) == NULL )
		return;

	if( battle_config.bg_reward_rates != 100 )
	{ // BG Reward Rates
		amount = amount * battle_config.bg_reward_rates / 100;
		kafrapoints = kafrapoints * battle_config.bg_reward_rates / 100;
	}

	bg_result = cap_value(bg_result,0,2);
	memset(&it,0,sizeof(it));
	if( nameid == 7828 || nameid == 7829 || nameid == 7773 )
	{
		it.nameid = nameid;
		it.identify = 1;
	}
	else nameid = 0;

	for( j = 0; j < MAX_BG_MEMBERS; j++ )
	{
		if( (sd = bg->members[j].sd) == NULL )
			continue;

		if( battle_config.bg_ranking_bonus )
		{
			rank = 0;
			ARR_FIND(0,MAX_FAME_LIST,i,bgrank_fame_list[i].id == sd->status.char_id);
			if( i < MAX_FAME_LIST )
				rank = 1;
			else
			{
				ARR_FIND(0,MAX_FAME_LIST,i,bg_fame_list[i].id == sd->status.char_id);
				if( i < MAX_FAME_LIST )
					rank = 1;
			}
		}

		if( quest_id ) quest_add(sd,quest_id);
		pc_setglobalreg(sd,var,pc_readglobalreg(sd,var) + add_value);

		if( kafrapoints > 0 )
		{
			get_amount = kafrapoints;
			if( rank ) get_amount += battle_config.bg_ranking_bonus * get_amount / 100;
			pc_getcash(sd,0,get_amount);
		}

		if( nameid && amount > 0 )
		{
			get_amount = amount;
			if( rank ) get_amount += battle_config.bg_ranking_bonus * get_amount / 100;

			if( (flag = pc_additem(sd,&it,get_amount)) )
				clif_additem(sd,0,0,flag);
			if( log_config.enable_logs&LOG_SCRIPT_TRANSACTIONS )
				log_pick_pc(sd, "N", nameid, get_amount, NULL, it.serial);
		}

		type = bg->members[j].ranked ? 2 : 3; // Where to Add Fame

		switch( bg_result )
		{
		case 0: // Won
			add2limit(sd->status.bgstats.win,1,USHRT_MAX);
			fame = 100;
			if( sd->state.bmaster_flag )
			{
				add2limit(sd->status.bgstats.leader_win,1,USHRT_MAX);
				fame += 25;
			}
			pc_addfame(sd,fame,type);
			switch( bg_arena )
			{
			case 0: add2limit(sd->status.bgstats.eos_wins,1,USHRT_MAX); break;
			case 1: add2limit(sd->status.bgstats.boss_wins,1,USHRT_MAX); break;
			case 2: add2limit(sd->status.bgstats.ti_wins,1,USHRT_MAX); break;
			case 3: add2limit(sd->status.bgstats.ctf_wins,1,USHRT_MAX); break;
			case 4: add2limit(sd->status.bgstats.td_wins,1,USHRT_MAX); break;
			case 5: add2limit(sd->status.bgstats.sc_wins,1,USHRT_MAX); break;
			case 6: add2limit(sd->status.bgstats.cq_wins,1,USHRT_MAX); break;
			case 7: add2limit(sd->status.bgstats.ru_wins,1,USHRT_MAX); break;
			}
			break;
		case 1: // Tie
			add2limit(sd->status.bgstats.tie,1,USHRT_MAX);
			fame = 75;
			if( sd->state.bmaster_flag )
			{
				add2limit(sd->status.bgstats.leader_tie,1,USHRT_MAX);
				fame += 10;
			}
			pc_addfame(sd,fame,type);
			switch( bg_arena )
			{
			case 0: add2limit(sd->status.bgstats.eos_tie,1,USHRT_MAX); break;
			case 1: add2limit(sd->status.bgstats.boss_tie,1,USHRT_MAX); break;
			case 2: add2limit(sd->status.bgstats.ti_tie,1,USHRT_MAX); break;
			case 3: add2limit(sd->status.bgstats.ctf_tie,1,USHRT_MAX); break;
			case 4: add2limit(sd->status.bgstats.td_tie,1,USHRT_MAX); break;
			case 5: add2limit(sd->status.bgstats.sc_tie,1,USHRT_MAX); break;
			// No Tie for conquest
			}
			break;
		case 2: // Lost
			add2limit(sd->status.bgstats.lost,1,USHRT_MAX);
			fame = 50;
			if( sd->state.bmaster_flag )
				add2limit(sd->status.bgstats.leader_lost,1,USHRT_MAX);
			pc_addfame(sd,fame,type);
			switch( bg_arena )
			{
			case 0: add2limit(sd->status.bgstats.eos_lost,1,USHRT_MAX); break;
			case 1: add2limit(sd->status.bgstats.boss_lost,1,USHRT_MAX); break;
			case 2: add2limit(sd->status.bgstats.ti_lost,1,USHRT_MAX); break;
			case 3: add2limit(sd->status.bgstats.ctf_lost,1,USHRT_MAX); break;
			case 4: add2limit(sd->status.bgstats.td_lost,1,USHRT_MAX); break;
			case 5: add2limit(sd->status.bgstats.sc_lost,1,USHRT_MAX); break;
			case 6: add2limit(sd->status.bgstats.cq_lost,1,USHRT_MAX); break;
			case 7: add2limit(sd->status.bgstats.ru_lost,1,USHRT_MAX); break;
			}
			break;
		}
	}
}

void do_init_battleground(void)
{
	bg_team_db = idb_alloc(DB_OPT_RELEASE_DATA);
	add_timer_func_list(bg_send_xy_timer, "bg_send_xy_timer");
	add_timer_interval(gettick() + battle_config.bg_update_interval, bg_send_xy_timer, 0, 0, battle_config.bg_update_interval);
	bg_guild_build_data();
}

void do_final_battleground(void)
{
	bg_team_db->destroy(bg_team_db, NULL);
}
