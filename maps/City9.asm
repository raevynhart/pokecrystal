	object_const_def


City9_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CITY9
	endcallback


City9_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, ROUTE_14, 1
	warp_event 10,  5, ROUTE_15, 1

	def_coord_events

	def_bg_events
	

	def_object_events
