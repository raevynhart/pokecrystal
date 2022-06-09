	object_const_def


City7_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CITY_7
	endcallback


City7_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, C7_SOUTH_GATE, 1
	warp_event 13,  5, C7_NORTH_GATE, 1

	def_coord_events

	def_bg_events
	

	def_object_events
