map_attributes: MACRO
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
CURRENT_MAP_WIDTH = \2_WIDTH
CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
connection: MACRO
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

; LEGACY: Support for old connection macro
if _NARG == 6
	connection \1, \2, \3, (\4) - (\5)
else

; Calculate tile offsets for source (current) and target maps
_src = 0
_tgt = (\4) + 3
if _tgt < 0
_src = -_tgt
_tgt = 0
endc

if !STRCMP("\1", "north")
_blk = \3_WIDTH * (\3_HEIGHT - 3) + _src
_map = _tgt
_win = (\3_WIDTH + 6) * \3_HEIGHT + 1
_y = \3_HEIGHT * 2 - 1
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif !STRCMP("\1", "south")
_blk = _src
_map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
_win = \3_WIDTH + 7
_y = 0
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif !STRCMP("\1", "west")
_blk = (\3_WIDTH * _src) + \3_WIDTH - 3
_map = (CURRENT_MAP_WIDTH + 6) * _tgt
_win = (\3_WIDTH + 6) * 2 - 6
_y = (\4) * -2
_x = \3_WIDTH * 2 - 1
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

elif !STRCMP("\1", "east")
_blk = (\3_WIDTH * _src)
_map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
_win = \3_WIDTH + 7
_y = (\4) * -2
_x = 0
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

else
fail "Invalid direction for 'connection'."
endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win
endc
ENDM


	map_attributes City1, CITY_1, $05, EAST
	connection east, Route1, ROUTE_1, -11

	map_attributes City3, CITY_3, $05, WEST | EAST
	connection west, Route2, ROUTE_2, 5
	connection east, Route3, ROUTE_3, 4

	map_attributes City5, CITY_5, $05, WEST | EAST
	connection west, Route6, ROUTE_6, -2
	connection east, Route5, ROUTE_5, -21

	map_attributes City6, CITY_6, $35, WEST
	connection west, Route8, ROUTE_8, -1

	map_attributes City8, CITY_8, $33, NORTH | SOUTH
	connection north, Route13, ROUTE_13, 0
	connection south, Route14, ROUTE_14, 1

	map_attributes City10, CITY_10, $33, NORTH | WEST
	connection north, Route17, ROUTE_17, 2
	connection west, Route16, ROUTE_16, 0

	map_attributes Route1, ROUTE_1, $05, WEST
	connection west, City1, CITY_1, 11

	map_attributes Route2, ROUTE_2, $05, EAST
	connection east, City3, CITY_3, -5

	map_attributes Route3, ROUTE_3, $05, WEST | EAST
	connection west, City3, CITY_3, -4
	connection east, Special3, SPECIAL_3, 1

	map_attributes Route4, ROUTE_4, $05, NORTH
	connection north, Special3, SPECIAL_3, 0

	map_attributes Route5, ROUTE_5, $05, WEST
	connection west, City5, CITY_5, 21

	map_attributes Route6, ROUTE_6, $05, EAST
	connection east, City5, CITY_5, 2

	map_attributes Route6Cave, ROUTE_6_CAVE, $1D, WEST
	connection west, Route7, ROUTE_7, -19

	map_attributes Route7, ROUTE_7, $1D, WEST | EAST
	connection west, Route9, ROUTE_9, 2
	connection east, Route6Cave, ROUTE_6_CAVE, 19

	map_attributes Route8, ROUTE_8, $05, EAST
	connection east, City6, CITY_6, 1

	map_attributes Route9, ROUTE_9, $1D, SOUTH | EAST
	connection south, Route10, ROUTE_10, -32
	connection east, Route7, ROUTE_7, -2

	map_attributes Route10, ROUTE_10, $1D, NORTH
	connection north, Route9, ROUTE_9, 32

	map_attributes Route11, ROUTE_11, $0F, NORTH | SOUTH
	connection north, Route12, ROUTE_12, -1
	connection south, Route13, ROUTE_13, -1

	map_attributes Route12, ROUTE_12, $0F, SOUTH
	connection south, Route11, ROUTE_11, 1

	map_attributes Route13, ROUTE_13, $0F, NORTH | SOUTH
	connection north, Route11, ROUTE_11, 1
	connection south, City8, CITY_8, 0

	map_attributes Route14, ROUTE_14, $33, NORTH
	connection north, City8, CITY_8, -1

	map_attributes Route15, ROUTE_15, $13, SOUTH
	connection south, Special9, SPECIAL_9, 0

	map_attributes Route16, ROUTE_16, $13, WEST | EAST
	connection west, Special9, SPECIAL_9, 0
	connection east, City10, CITY_10, 0

	map_attributes Route17, ROUTE_17, $13, SOUTH
	connection south, City10, CITY_10, -2

	map_attributes Special3, SPECIAL_3, $05, SOUTH | WEST
	connection south, Route4, ROUTE_4, 0
	connection west, Route3, ROUTE_3, -1

	map_attributes Special9, SPECIAL_9, $1D, NORTH | EAST
	connection north, Route15, ROUTE_15, 0
	connection east, Route16, ROUTE_16, 0

	map_attributes C1NorthGate, C1_NORTH_GATE, $00, 0
	map_attributes City2, CITY_2, $35, 0
	map_attributes C2NorthGate, C2_NORTH_GATE, $00, 0
	map_attributes C2EastGate, C2_EAST_GATE, $00, 0
	map_attributes C2WestGate, C2_WEST_GATE, $00, 0
	map_attributes City4, CITY_4, $00, 0
	map_attributes C6EastGate, C6_EAST_GATE, $00, 0
	map_attributes City7, CITY_7, $05, 0
	map_attributes C7NorthGate, C7_NORTH_GATE, $00, 0
	map_attributes C7SouthGate, C7_SOUTH_GATE, $00, 0
	map_attributes City9, CITY_9, $1D, 0
	map_attributes Special1, SPECIAL_1, $43, 0
	map_attributes Special2, SPECIAL_2, $43, 0
	map_attributes Special4, SPECIAL_4, $43, 0
	map_attributes Special5, SPECIAL_5, $43, 0
	map_attributes Special6, SPECIAL_6, $43, 0
	map_attributes Special7, SPECIAL_7, $43, 0
	map_attributes Special8, SPECIAL_8, $43, 0
	map_attributes Special10, SPECIAL_10, $43, 0
	map_attributes RestArea, REST_AREA, $00, 0
	map_attributes ShipPlayersCabin, SHIP_PLAYERS_CABIN, $00, 0
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $00, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $00, 0
	map_attributes Island, ISLAND, $2c, 0