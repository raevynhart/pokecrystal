	object_const_def


Route5_MapScripts:
	def_scene_scripts

	def_callbacks


Route5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  5, CITY_4, 2
	warp_event  9, 49, R5_SOUTH_GATE, 1
	warp_event 10, 49, R5_SOUTH_GATE, 2

	def_coord_events

	def_bg_events
	

	def_object_events
