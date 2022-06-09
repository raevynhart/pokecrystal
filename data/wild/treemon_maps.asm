treemon_map: MACRO
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map ROUTE_1,                   TREEMON_SET_KANTO
	treemon_map ROUTE_2,                   TREEMON_SET_KANTO
	treemon_map ROUTE_3,                   TREEMON_SET_CITY
	treemon_map ROUTE_4,                   TREEMON_SET_ROUTE
	treemon_map ROUTE_5,                   TREEMON_SET_ROUTE
	treemon_map ROUTE_6,                   TREEMON_SET_ROUTE
	treemon_map ROUTE_7,                   TREEMON_SET_KANTO
	treemon_map ROUTE_8,                   TREEMON_SET_TOWN
	treemon_map ROUTE_9,                   TREEMON_SET_ROUTE
	treemon_map ROUTE_10,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_11,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_12,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_13,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_14,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_15,                  TREEMON_SET_CITY
	treemon_map ROUTE_16,                  TREEMON_SET_CITY
	treemon_map ROUTE_17,                  TREEMON_SET_TOWN
	db -1

RockMonMaps:
	treemon_map CITY_9,                    TREEMON_SET_ROCK
	treemon_map ROUTE_15,                  TREEMON_SET_ROCK
	treemon_map ROUTE_16,                  TREEMON_SET_ROCK
	treemon_map ROUTE_14,                  TREEMON_SET_ROCK
	db -1
