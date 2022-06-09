	object_const_def


City6_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CITY_6
	endcallback


City6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, C6_EAST_GATE, 1


	def_coord_events

	def_bg_events
	

	def_object_events
