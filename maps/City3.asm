	object_const_def


City3_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_CITY3
	endcallback


City3_MapEvents:
	db 0, 0 ; filler

	def_warp_events


	def_coord_events

	def_bg_events
	

	def_object_events
