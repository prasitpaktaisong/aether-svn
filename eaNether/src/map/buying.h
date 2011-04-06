// Copyright (c) Athena Dev Teams - Licensed under GNU GPL
// For more information, see LICENCE in the main folder

#ifndef	_BUYING_H_
#define	_BUYING_H_

#include "../common/cbasetypes.h"
//#include "map.h"
struct map_session_data;

struct s_buying {
	short index;
	short amount;
	unsigned int value;
};

void buying_open(struct map_session_data *sd, const char* message, unsigned int zenylimit, const uint8* data, int count);

#endif /* _BUYING_H_ */
