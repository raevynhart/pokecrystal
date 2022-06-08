	object_const_def


Rest_Area_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_REST_AREA
	endcallback


Rest_Area_MapEvents:
	db 0, 0 ; filler

	def_warp_events


	def_coord_events

	def_bg_events
	

	def_object_events
