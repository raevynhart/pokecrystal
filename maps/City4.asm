	object_const_def


City4_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CITY_4
	endcallback


City4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, ROUTE_4, 1
	warp_event 10,  5, ROUTE_5, 1

	def_coord_events

	def_bg_events
	

	def_object_events
