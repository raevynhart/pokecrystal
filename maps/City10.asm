	object_const_def


City10_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CITY_10
	endcallback


City10_MapEvents:
	db 0, 0 ; filler

	def_warp_events


	def_coord_events

	def_bg_events
	

	def_object_events
