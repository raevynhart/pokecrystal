	object_const_def


City2_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CITY_2
	endcallback


City2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27, 12, C2_EAST_GATE, 3
	warp_event 27, 13, C2_EAST_GATE, 4
	warp_event  4, 12, C2_WEST_GATE, 3
	warp_event  4, 13, C2_WEST_GATE, 4
	warp_event 17,  5, C2_NORTH_GATE, 1

	def_coord_events

	def_bg_events
	

	def_object_events
