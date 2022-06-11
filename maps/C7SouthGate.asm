	object_const_def


C7SouthGate_MapScripts:
	def_scene_scripts

	def_callbacks


C7SouthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_12, 1
	warp_event  5,  7, ROUTE_12, 1
	warp_event  4,  0, CITY_7, 1
	warp_event  5,  0, CITY_7, 2

	def_coord_events

	def_bg_events
	

	def_object_events
