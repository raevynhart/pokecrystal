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

	newgroup CITY1                                                ;  1
	map_const CITY_1_MAIN,                                 10,  9 ;  1
	map_const ROUTE_1,                                     20, 18 ;  2
	map_const PLAYERS_HOUSE_1F,                             5,  4 ;  3
	map_const PLAYERS_HOUSE_2F,                             4,  3 ;  4
	endgroup

	newgroup CITY2                                                ;  2
	map_const CITY_2_MAIN,                                 16, 11 ;  1
	endgroup

	newgroup CITY3                                                ;  3
	map_const CITY_3_MAIN,                                  8,  7 ;  1
	map_const ROUTE_2,                                     40, 18 ;  2
	map_const ROUTE_3,                                     30,  9 ;  3

	endgroup

	newgroup CITY4                                                ;  4
	map_const CITY_4_MAIN,                                 14, 10 ;  1
	map_const ROUTE_4,                                     10, 18 ;  2
	endgroup

	newgroup CITY5                                                ;  5
	map_const CITY_5_MAIN,                                 12,  7 ;  1
	map_const ROUTE_5,                                     10, 27 ;  2

	endgroup

	newgroup CITY6                                                ;  6
	map_const CITY_6_MAIN,                                  7,  6 ;  1
	map_const ROUTE_8,                                     10,  9 ;  2
	endgroup

	newgroup CITY7                                                ;  7
	map_const CITY_7_MAIN,                                 20, 14 ;  1
	map_const ROUTE_11,                                    30,  9 ;  2
	map_const ROUTE_12,                                    10,  9 ;  3
	endgroup

	newgroup CITY8                                                ;  8
	map_const CITY_8_MAIN,                                 10,  8 ;  1
	map_const ROUTE_13,                                    10,  9 ;  2
	map_const ROUTE_14,                                    30,  9 ;  3
	endgroup

	newgroup CITY9                                                ;  9
	map_const CITY_9_MAIN,                                  9, 10 ;  1
	map_const ROUTE_15,                                    10, 18 ;  2

	endgroup

	newgroup CITY10                                               ; 10
	map_const CITY_10_MAIN,                                13,  7 ;  1
	map_const ROUTE_16,                                    40,  9 ;  2
	map_const ROUTE_17,                                    10,  9 ;  3
	endgroup

	newgroup SPECIAL1                                             ; 11
	endgroup

	newgroup SPECIAL2                                             ; 12
	endgroup

	newgroup SPECIAL3                                             ; 13
	endgroup

	newgroup SPECIAL4                                             ; 14
	endgroup

	newgroup SPECIAL5                                             ; 15
	endgroup

	newgroup SPECIAL6                                             ; 16
	endgroup

	newgroup SPECIAL7                                             ; 17
	endgroup

	newgroup SPECIAL8                                             ; 18
	endgroup

	newgroup SPECIAL9                                             ; 19
	endgroup

	newgroup SPECIAL10                                            ; 20
	endgroup

	newgroup SHIP                                                 ; 21
	endgroup

	newgroup ISLAND                                               ; 22
	endgroup

	newgroup MISC1                                                ; 23
	map_const ROUTE_6,                                     10,  9 ;  1
	map_const ROUTE_7,                                     10, 27 ;  2
	map_const ROUTE_9,                                     50,  9 ;  3
	map_const ROUTE_10,                                    40, 18 ;  4
	endgroup

	newgroup MISC2                                                ; 24
	endgroup

	newgroup MISC3                                                ; 25
	endgroup

	newgroup MISC4                                                ; 26
	endgroup


NUM_MAP_GROUPS EQU const_value ; 26
