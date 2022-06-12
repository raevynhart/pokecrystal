	object_const_def


RestArea_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_REST_AREA
	endcallback


RestArea_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 13, ROUTE_9, 1
	warp_event 10, 13, ROUTE_9, 1

	def_coord_events

	def_bg_events
	

	def_object_events
