newgroup: MACRO
;\1: group id
	const_skip
MAPGROUP_\1 EQU const_value
CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
__map_value__ = 1
ENDM

map_const: MACRO
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
GROUP_\1 EQU const_value
MAP_\1 EQU __map_value__
__map_value__ += 1
\1_WIDTH EQU \2
\1_HEIGHT EQU \3
ENDM

endgroup: MACRO
{CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup CITY_1                                               ;  1
	map_const CITY_1,                                      10,  9 ;  1
	map_const ROUTE_1,                                     20, 18 ;  2
	map_const PLAYERS_HOUSE_1F,                             5,  4 ;  3
	map_const PLAYERS_HOUSE_2F,                             4,  3 ;  4
	map_const C1_NORTH_GATE,                                5,  4 ;  5
	endgroup

	newgroup CITY_2                                               ;  2
	map_const CITY_2,                                      17, 12 ;  1
	map_const C2_NORTH_GATE,                                5,  4 ;  2
	map_const C2_EAST_GATE,                                 5,  4 ;  3
	map_const C2_WEST_GATE,                                 5,  4 ;  4
	endgroup

	newgroup CITY_3                                               ;  3
	map_const CITY_3,                                      13, 18 ;  1
	map_const ROUTE_2,                                     40, 18 ;  2
	map_const ROUTE_3,                                     30,  9 ;  3
	map_const ROUTE_4,                                     10, 18 ;  4
	endgroup

	newgroup CITY_4                                               ;  4
	map_const CITY_4,                                      16, 10 ;  1
	endgroup

	newgroup CITY_5                                               ;  5
	map_const CITY_5,                                      14,  8 ;  1
	map_const ROUTE_5,                                     10, 27 ;  2
	map_const ROUTE_6,                                     10,  9 ;  3
	endgroup

	newgroup CITY_6                                               ;  6
	map_const CITY_6,                                      12,  7 ;  1
	map_const ROUTE_8,                                     10,  9 ;  2
	map_const C6_EAST_GATE,                                 5,  4 ;  3
	endgroup

	newgroup CITY_7                                               ;  7
	map_const CITY_7,                                      20, 15 ;  1
	map_const ROUTE_11,                                    30,  9 ;  2
	map_const ROUTE_12,                                    10,  9 ;  3
	map_const C7_NORTH_GATE,                                5,  4 ;  4
	map_const C7_SOUTH_GATE,                                5,  4 ;  5
	endgroup

	newgroup CITY_8                                               ;  8
	map_const CITY_8,                                      10,  8 ;  1
	map_const ROUTE_13,                                    10,  9 ;  2
	map_const ROUTE_14,                                    30,  9 ;  3
	endgroup

	newgroup CITY_9                                               ;  9
	map_const CITY_9,                                       9, 10 ;  1
	endgroup

	newgroup CITY_10                                              ; 10
	map_const CITY_10,                                     13,  7 ;  1
	map_const ROUTE_15,                                    10, 18 ;  2
	map_const ROUTE_16,                                    40,  9 ;  3
	map_const ROUTE_17,                                    10, 18 ;  4
	endgroup

	newgroup SPECIAL_1                                            ; 11
	map_const SPECIAL_1,                                   10,  9 ;  1
	endgroup

	newgroup SPECIAL_2                                            ; 12
	map_const SPECIAL_2,                                   10,  9 ;  1
	endgroup

	newgroup SPECIAL_3                                            ; 13
	map_const SPECIAL_3,                                   10,  9 ;  1
	endgroup

	newgroup SPECIAL_4                                            ; 14
	map_const SPECIAL_4,                                   10,  9 ;  1
	endgroup

	newgroup SPECIAL_5                                            ; 15
	map_const SPECIAL_5,                                   10,  9 ;  1
	endgroup

	newgroup SPECIAL_6                                            ; 16
	map_const SPECIAL_6,                                   10,  9 ;  1
	endgroup

	newgroup SPECIAL_7                                            ; 17
	map_const SPECIAL_7,                                   10,  9 ;  1
	endgroup

	newgroup SPECIAL_8                                            ; 18
	map_const SPECIAL_8,                                   10,  9 ;  1
	endgroup

	newgroup SPECIAL_9                                            ; 19
	map_const SPECIAL_9,                                   10,  9 ;  1
	endgroup

	newgroup SPECIAL_10                                           ; 20
	map_const SPECIAL_10,                                  10,  9 ;  1
	endgroup

	newgroup SHIP                                                 ; 21
	map_const SHIP_PLAYERS_CABIN,                           5,  4 ;  1
	endgroup

	newgroup ISLAND                                               ; 22
	map_const ISLAND,                                      10,  9 ;  1
	endgroup

	newgroup MISC_1                                               ; 23
	map_const ROUTE_6_CAVE,                                20,  9 ;  1
	map_const ROUTE_7,                                     10, 27 ;  2
	map_const ROUTE_9,                                     50,  9 ;  3
	map_const ROUTE_10,                                    40, 18 ;  4
	map_const REST_AREA,                                   10,  9 ;  5
	endgroup

	newgroup MISC_2                                               ; 24
	endgroup

	newgroup MISC_3                                               ; 25
	endgroup

	newgroup MISC_4                                               ; 26
	endgroup


NUM_MAP_GROUPS EQU const_value ; 26
