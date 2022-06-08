	object_const_def


City1_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CITY1
	endcallback


City1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, PLAYERS_HOUSE_1F, 1
	warp_event 13,  5, C1_NORTH_GATE, 1

	def_coord_events

	def_bg_events
	

	def_object_events
