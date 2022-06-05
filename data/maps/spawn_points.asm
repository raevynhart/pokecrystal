spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4, SpawnPoints

	spawn PLAYERS_HOUSE_2F,            3,  3

	spawn ISLAND,                      5,  6

	spawn CITY1,                      13,  6
	spawn CITY2,                      29,  4
	spawn CITY3,                      31, 26
	spawn CITY4,                      11, 74
	spawn CITY5,                      15, 10
	spawn CITY6,                      23, 44
	spawn REST_AREA,                  15, 28
	spawn CITY7,                      13, 22
	spawn CITY8,                      23, 28
	spawn CITY9,                      15, 14
	spawn CITY10,                     21, 29
	spawn SHIP_PLAYERS_CABIN,          6,  2

	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1
