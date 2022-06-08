scene_var: MACRO
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var PLAYERS_HOUSE_1F,                            wPlayersHouse1FSceneID
	db -1 ; end
