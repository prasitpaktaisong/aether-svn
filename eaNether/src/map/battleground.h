// Copyright (c) Athena Dev Teams - Licensed under GNU GPL
// For more information, see LICENCE in the main folder

#ifndef _BATTLEGROUND_H_
#define _BATTLEGROUND_H_

#include "../common/mmo.h" // struct party
#include "guild.h"

#define MAX_BG_MEMBERS 50

struct battleground_member_data {
	unsigned short x, y;
	struct map_session_data *sd;
	bool ranked;
};

struct battleground_data {
	unsigned int bg_id;
	time_t creation_tick; // Creation of this Team
	unsigned char count;
	struct battleground_member_data members[MAX_BG_MEMBERS];
	// Team Leader and BG Skills features
	int leader_char_id;
	int skill_block_timer[MAX_GUILDSKILL];
	unsigned int color;
	// Fake Guild Link
	struct guild *g;
	// BG Cementery
	unsigned short mapindex, x, y;
	bool reveal_pos, reveal_flag;
	// Script Events
	char logout_event[50];
	char die_event[50];
	// Score Board
	int team_score;
};

extern struct guild bg_guild[];

void do_init_battleground(void);
void do_final_battleground(void);

struct battleground_data* bg_team_search(int bg_id);
struct guild* bg_guild_get(int bg_id);
int bg_send_dot_remove(struct map_session_data *sd);
int bg_team_get_id(struct block_list *bl);
struct map_session_data* bg_getavailablesd(struct battleground_data *bg);

int bg_create(unsigned short mapindex, short rx, short ry, int guild_index, const char *ev, const char *dev);
int bg_team_join(int bg_id, struct map_session_data *sd);
int bg_team_delete(int bg_id);
int bg_team_leave(struct map_session_data *sd, int flag);
int bg_team_warp(int bg_id, unsigned short mapindex, short x, short y);
int bg_member_respawn(struct map_session_data *sd);
int bg_send_message(struct map_session_data *sd, const char *mes, int len);
// void bg_randomize_teams(int bg_id1, int bg_id2);
void bg_team_getitem(int bg_id, int nameid, int amount);
void bg_team_get_kafrapoints(int bg_id, int amount);
void bg_team_rewards(int bg_id, int nameid, int amount, int kafrapoints, int quest_id, const char *var, int add_value, int bg_arena, int bg_result);
int bg_checkskill(struct battleground_data *bg, int id);
void bg_block_skill_status(struct battleground_data *bg, int skillnum);
void bg_block_skill_start(struct battleground_data *bg, int skillnum, int time);

#endif /* _BATTLEGROUND_H_ */
