	object_const_def


City9_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CITY_9
	endcallback


City9_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 15, ROUTE_14, 1
	warp_event 11, 15, ROUTE_15, 1
	warp_event 13,  1, SPECIAL_8, 1

	def_coord_events

	def_bg_events
	

	def_object_events
