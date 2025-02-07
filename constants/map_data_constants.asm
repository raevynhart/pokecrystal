MAPGROUP_N_A  EQU -1
GROUP_N_A     EQU -1
MAP_N_A       EQU -1
MAPGROUP_NONE EQU 0
GROUP_NONE    EQU 0
MAP_NONE      EQU 0

; map struct members (see data/maps/maps.asm)
rsreset
MAP_MAPATTRIBUTES_BANK rb ; 0
MAP_TILESET            rb ; 1
MAP_ENVIRONMENT        rb ; 2
MAP_MAPATTRIBUTES      rw ; 3
MAP_LOCATION           rb ; 5
MAP_MUSIC              rb ; 6
MAP_PALETTE            rb ; 7
MAP_FISHGROUP          rb ; 8
MAP_LENGTH EQU _RS

; map environments (wEnvironment)
; EnvironmentColorsPointers indexes (see data/maps/environment_colors.asm)
	const_def 1
	const TOWN
	const ROUTE
	const INDOOR
	const CAVE
	const ENVIRONMENT_5
	const GATE
	const DUNGEON
NUM_ENVIRONMENTS EQU const_value - 1

; map palettes (wEnvironment)
	const_def
	const PALETTE_AUTO
	const PALETTE_DAY
	const PALETTE_NITE
	const PALETTE_MORN
	const PALETTE_DARK
NUM_MAP_PALETTES EQU const_value

; FishGroups indexes (see data/wild/fish.asm)
	const_def
	const FISHGROUP_NONE
	const FISHGROUP_SHORE
	const FISHGROUP_OCEAN
	const FISHGROUP_LAKE
	const FISHGROUP_POND
	const FISHGROUP_DRATINI
	const FISHGROUP_QWILFISH_SWARM
	const FISHGROUP_REMORAID_SWARM
	const FISHGROUP_GYARADOS
	const FISHGROUP_DRATINI_2
	const FISHGROUP_WHIRL_ISLANDS
	const FISHGROUP_QWILFISH
	const FISHGROUP_REMORAID
	const FISHGROUP_QWILFISH_NO_SWARM
NUM_FISHGROUPS EQU const_value - 1

; connection directions (see data/maps/data.asm)
	const_def
	const EAST_F
	const WEST_F
	const SOUTH_F
	const NORTH_F

; wMapConnections
	const_def
	shift_const EAST
	shift_const WEST
	shift_const SOUTH
	shift_const NORTH

; SpawnPoints indexes (see data/maps/spawn_points.asm)
	const_def
	const SPAWN_HOME

; kanto
	const SPAWN_ISLAND
; johto
	const SPAWN_CITY_1
	const SPAWN_CITY_2
	const SPAWN_CITY_3
	const SPAWN_CITY_4
	const SPAWN_CITY_5
	const SPAWN_CITY_6
	const SPAWN_REST_AREA
	const SPAWN_CITY_7
	const SPAWN_CITY_8
	const SPAWN_CITY_9
	const SPAWN_CITY_10
	const SPAWN_SHIP_PLAYERS_CABIN
NUM_SPAWNS EQU const_value

SPAWN_N_A EQU -1

; Flypoints indexes (see data/maps/flypoints.asm)
	const_def
; johto
JOHTO_FLYPOINT EQU const_value
	const FLY_CITY1
	const FLY_CITY2
	const FLY_CITY3
	const FLY_CITY4
	const FLY_CITY5
	const FLY_CITY6
	const FLY_REST_AREA
	const FLY_CITY7
	const FLY_CITY8
	const FLY_CITY9
	const FLY_CITY10
; kanto
KANTO_FLYPOINT EQU const_value
	const FLY_ISLAND
DEF NUM_FLYPOINTS EQU const_value

