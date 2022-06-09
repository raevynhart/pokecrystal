; Maps that roaming monsters can be on, and possible maps they can jump to.
; Notably missing are Route 40 and Route 41, which are water routes.

roam_map: MACRO
	map_id \1
	db _NARG - 1
rept _NARG - 1
	map_id \2
	shift
endr
	db 0
list_index += 1
ENDM

RoamMaps:
	list_start RoamMaps
	; start map, ...other maps
	roam_map ROUTE_1,  ROUTE_2,  ROUTE_3
	roam_map ROUTE_2,  ROUTE_3,  ROUTE_4
	roam_map ROUTE_3,  ROUTE_4,  ROUTE_5,  ROUTE_6
	roam_map ROUTE_4,  ROUTE_5,  ROUTE_6,  ROUTE_7
	roam_map ROUTE_7,  ROUTE_8,  ROUTE_9
	roam_map ROUTE_9,  ROUTE_10, ROUTE_11
	roam_map ROUTE_10, ROUTE_11, ROUTE_12
	assert_list_length NUM_ROAMMON_MAPS
	db -1 ; end
