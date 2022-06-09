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
	warp_event  5,  5, C2_EAST_GATE, 1
	warp_event 10,  5, C2_WEST_GATE, 1
	warp_event 13,  5, C2_NORTH_GATE, 1

	def_coord_events

	def_bg_events
	

	def_object_events
