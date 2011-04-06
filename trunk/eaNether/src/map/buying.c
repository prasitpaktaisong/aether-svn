// Copyright (c) Athena Dev Teams - Licensed under GNU GPL
// For more information, see LICENCE in the main folder

#include "../common/nullpo.h"
#include "../common/strlib.h"
#include "../common/utils.h"
#include "channel.h"
#include "clif.h"
#include "itemdb.h"
#include "atcommand.h"
#include "map.h"
#include "path.h"
#include "chrif.h"
#include "buying.h"
#include "pc.h"
#include "skill.h"
#include "battle.h"
#include "log.h"

#include <stdio.h>
#include <string.h>

void buying_open(struct map_session_data *sd, const char* message, unsigned int zenylimit, const uint8* data, int count)
{
	int buying_skill_lvl, i, j;
	nullpo_retv(sd);

	buying_skill_lvl = pc_checkskill(sd, ALL_BUYING_STORE);
	if( pc_istrading(sd) || !buying_skill_lvl || (count != (buying_skill_lvl == 1 ? 2 : 5)) || zenylimit <= 0 || zenylimit >= sd->status.zeny )
	{
		clif_skill_fail(sd,ALL_BUYING_STORE,0,0,0);
		return;
	}

	i = 0;
	for( j = 0; j < count; j++ )
	{
		short index        = *(uint16*)(data + 8*j + 0);
		short amount       = *(uint16*)(data + 8*j + 2);
		unsigned int value = *(uint32*)(data + 8*j + 4);

		index -= 2; // offset adjustment

		if( index < 0 || index >= MAX_INVENTORY // invalid position
		//NOTE: official server does not do any of the following checks!
		||  !sd->inventory_data[index]
		||  !sd->inventory_data[index]->allow_buying
		||  !itemdb_cantrade(&sd->status.inventory[index], pc_isGM(sd), pc_isGM(sd)) ) // untradeable item
			continue;

		sd->buying[i].index = index;
		sd->buying[i].amount = amount;
		sd->buying[i].value = cap_value(value, 1, (unsigned int)battle_config.vending_max_value);

		i++; // item successfully added
	}

	if( i != j )
		clif_displaymessage (sd->fd, msg_txt(266)); //"Some of your items cannot be vended and were removed from the shop."
	if( i == 0 )
	{	// no valid item found
		clif_skill_fail(sd,ALL_BUYING_STORE,0,0,0);
		return;
	}

	sd->buyer_id = sd->bl.id;
	sd->buy_num = i;
	safestrncpy(sd->message, message, MESSAGE_SIZE);

	pc_stop_walking(sd,1);
	clif_buyingstore_opened(sd,sd->buyer_id,sd->buying); // Self List
	// clif_buyingstore_show(&sd->bl,message,0); // Area Display

	if( map[sd->bl.m].flag.vending_cell )
		map_setcell(sd->bl.m, sd->bl.x, sd->bl.y, CELL_NOVENDING, false);
}
