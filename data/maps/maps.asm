map: MACRO
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, ENVIRONMENT_5, GATE, or DUNGEON
;\4: location: a LANDMARK_* constant
;\5: music: a MUSIC_* constant
;\6: phone service flag: TRUE to prevent phone calls
;\7: time of day: a PALETTE_* constant
;\8: fishing group: a FISHGROUP_* constant
	db BANK(\1_MapAttributes), \2, \3
	dw \1_MapAttributes
	db \4, \5
	dn \6, \7
	db \8
ENDM

MapGroupPointers::
; pointers to the first map of each map group
	table_width 2, MapGroupPointers
	dw MapGroup_City1       ;  1
	dw MapGroup_City2       ;  2
	dw MapGroup_City3       ;  3
	dw MapGroup_City4       ;  4
	dw MapGroup_City5       ;  5
	dw MapGroup_City6       ;  6
	dw MapGroup_City7       ;  7
	dw MapGroup_City8       ;  8
	dw MapGroup_City9       ;  9
	dw MapGroup_City10      ; 10
	dw MapGroup_Special1    ; 11
	dw MapGroup_Special2    ; 12
	dw MapGroup_Special3    ; 13
	dw MapGroup_Special4    ; 14
	dw MapGroup_Special5    ; 15
	dw MapGroup_Special6    ; 16
	dw MapGroup_Special7    ; 17
	dw MapGroup_Special8    ; 18
	dw MapGroup_Special9    ; 19
	dw MapGroup_Special10   ; 20
	dw MapGroup_Ship        ; 21
	dw MapGroup_Island      ; 22
	dw MapGroup_Misc1       ; 23
	dw MapGroup_Misc2       ; 24
	dw MapGroup_Misc3       ; 25
	dw MapGroup_Misc4       ; 26
	assert_table_length NUM_MAP_GROUPS

MapGroup_City1:
	table_width MAP_LENGTH, MapGroup_City1
	map City1, TILESET_JOHTO, TOWN, LANDMARK_CITY_1, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map Route1, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_1, MUSIC_ROUTE_29, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map PlayersHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_CITY_1, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersHouse2F, TILESET_PLAYERS_ROOM, INDOOR, LANDMARK_CITY_1, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map C1NorthGate, TILESET_GATE, GATE, LANDMARK_CITY_1, MUSIC_ROUTE_37, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_CITY_1_MAPS

MapGroup_City2:
	table_width MAP_LENGTH, MapGroup_City2
	map City2, TILESET_JOHTO, TOWN, LANDMARK_CITY_2, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map C2NorthGate, TILESET_GATE, GATE, LANDMARK_CITY_2, MUSIC_ROUTE_37, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map C2EastGate, TILESET_GATE, GATE, LANDMARK_CITY_2, MUSIC_ROUTE_37, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map C2WestGate, TILESET_GATE, GATE, LANDMARK_CITY_2, MUSIC_ROUTE_37, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_CITY_2_MAPS

MapGroup_City3:
	table_width MAP_LENGTH, MapGroup_City3
	map City3, TILESET_JOHTO_MODERN, TOWN, LANDMARK_CITY_3, MUSIC_VIOLET_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map Route2, TILESET_JOHTO_MODERN, ROUTE, LANDMARK_ROUTE_2, MUSIC_ROUTE_30, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map Route3, TILESET_JOHTO_MODERN, ROUTE, LANDMARK_ROUTE_3, MUSIC_ROUTE_30, FALSE, PALETTE_AUTO, FISHGROUP_POND
	assert_table_length NUM_CITY_3_MAPS

MapGroup_City4:
	table_width MAP_LENGTH, MapGroup_City4
	map City4, TILESET_LIGHTHOUSE, TOWN, LANDMARK_CITY_4, MUSIC_AZALEA_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route4, TILESET_JOHTO_MODERN, ROUTE, LANDMARK_ROUTE_4, MUSIC_ROUTE_30, FALSE, PALETTE_AUTO, FISHGROUP_QWILFISH
	assert_table_length NUM_CITY_4_MAPS

MapGroup_City5:
	table_width MAP_LENGTH, MapGroup_City5
	map City5, TILESET_JOHTO_MODERN, TOWN, LANDMARK_CITY_5, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route5, TILESET_JOHTO_MODERN, ROUTE, LANDMARK_ROUTE_5, MUSIC_ROUTE_30, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route6, TILESET_JOHTO_MODERN, ROUTE, LANDMARK_ROUTE_6, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	assert_table_length NUM_CITY_5_MAPS

MapGroup_City6:
	table_width MAP_LENGTH, MapGroup_City6
	map City6, TILESET_JOHTO, TOWN, LANDMARK_CITY_6, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map Route8, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_8, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map C6EastGate, TILESET_GATE, GATE, LANDMARK_CITY_6, MUSIC_ROUTE_37, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_CITY_6_MAPS

MapGroup_City7:
	table_width MAP_LENGTH, MapGroup_City7
	map City7, TILESET_JOHTO_MODERN, TOWN, LANDMARK_CITY_7, MUSIC_VIOLET_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route11, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_11, MUSIC_ROUTE_37, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route12, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_12, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map C7NorthGate, TILESET_GATE, GATE, LANDMARK_CITY_7, MUSIC_ROUTE_37, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map C7SouthGate, TILESET_GATE, GATE, LANDMARK_CITY_7, MUSIC_ROUTE_37, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_CITY_7_MAPS

MapGroup_City8:
	table_width MAP_LENGTH, MapGroup_City8
	map City8, TILESET_KANTO, TOWN, LANDMARK_CITY_8, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route13, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_13, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map Route14, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_14, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	assert_table_length NUM_CITY_8_MAPS

MapGroup_City9:
	table_width MAP_LENGTH, MapGroup_City9
	map City9, TILESET_CAVE, TOWN, LANDMARK_CITY_9, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route15, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_15, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_AUTO, FISHGROUP_POND
	assert_table_length NUM_CITY_9_MAPS

MapGroup_City10:
	table_width MAP_LENGTH, MapGroup_City10
	map City10, TILESET_KANTO, TOWN, LANDMARK_CITY_10, MUSIC_AZALEA_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map Route16, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_16, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map Route17, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_17, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_DRATINI_2
	assert_table_length NUM_CITY_10_MAPS

MapGroup_Special1:
	table_width MAP_LENGTH, MapGroup_Special1
	map Special1, TILESET_JOHTO, TOWN, LANDMARK_SPECIAL_1, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_SPECIAL_1_MAPS

MapGroup_Special2:
	table_width MAP_LENGTH, MapGroup_Special2
	map Special2, TILESET_JOHTO, TOWN, LANDMARK_SPECIAL_2, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_SPECIAL_2_MAPS

MapGroup_Special3:
	table_width MAP_LENGTH, MapGroup_Special3
	map Special3, TILESET_JOHTO_MODERN, TOWN, LANDMARK_SPECIAL_3, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_SPECIAL_3_MAPS

MapGroup_Special4:
	table_width MAP_LENGTH, MapGroup_Special4
	map Special4, TILESET_JOHTO, TOWN, LANDMARK_SPECIAL_4, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_SPECIAL_4_MAPS

MapGroup_Special5:
	table_width MAP_LENGTH, MapGroup_Special5
	map Special5, TILESET_JOHTO, TOWN, LANDMARK_SPECIAL_5, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_SPECIAL_5_MAPS

MapGroup_Special6:
	table_width MAP_LENGTH, MapGroup_Special6
	map Special6, TILESET_JOHTO, TOWN, LANDMARK_SPECIAL_6, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_SPECIAL_6_MAPS

MapGroup_Special7:
	table_width MAP_LENGTH, MapGroup_Special7
	map Special1, TILESET_JOHTO, TOWN, LANDMARK_SPECIAL_1, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_SPECIAL_7_MAPS

MapGroup_Special8:
	table_width MAP_LENGTH, MapGroup_Special8
	map Special8, TILESET_JOHTO, TOWN, LANDMARK_SPECIAL_8, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_SPECIAL_8_MAPS

MapGroup_Special9:
	table_width MAP_LENGTH, MapGroup_Special9
	map Special9, TILESET_JOHTO, TOWN, LANDMARK_SPECIAL_9, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_SPECIAL_9_MAPS

MapGroup_Special10:
	table_width MAP_LENGTH, MapGroup_Special10
	map Special10, TILESET_JOHTO, TOWN, LANDMARK_SPECIAL_10, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_SPECIAL_10_MAPS

MapGroup_Ship:
	table_width MAP_LENGTH, MapGroup_Ship
	map ShipPlayersCabin, TILESET_LIGHTHOUSE, INDOOR, LANDMARK_SHIP, MUSIC_SS_AQUA, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_SHIP_MAPS

MapGroup_Island:
	table_width MAP_LENGTH, MapGroup_Island
	map Island, TILESET_JOHTO, TOWN, LANDMARK_ISLAND, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_ISLAND_MAPS

MapGroup_Misc1:
	table_width MAP_LENGTH, MapGroup_Misc1
	map Route6Cave, TILESET_CAVE, CAVE, LANDMARK_ROUTE_7, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map Route7, TILESET_CAVE, CAVE, LANDMARK_ROUTE_7, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map Route9, TILESET_CAVE, CAVE, LANDMARK_ROUTE_9, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route10, TILESET_CAVE, CAVE, LANDMARK_ROUTE_10, MUSIC_ROUTE_37, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map RestArea, TILESET_JOHTO, TOWN, LANDMARK_REST_AREA, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	assert_table_length NUM_MISC_1_MAPS

MapGroup_Misc2:
	table_width MAP_LENGTH, MapGroup_Misc2
	assert_table_length NUM_MISC_2_MAPS

MapGroup_Misc3:
	table_width MAP_LENGTH, MapGroup_Misc3
	assert_table_length NUM_MISC_3_MAPS

MapGroup_Misc4:
	table_width MAP_LENGTH, MapGroup_Misc4
	assert_table_length NUM_MISC_4_MAPS
