; Landmarks indexes (see data/maps/landmarks.asm)
	const_def
	const LANDMARK_SPECIAL           ; 00
; Johto landmarks
	const LANDMARK_CITY_1            ; 01
	const LANDMARK_SPECIAL_1         ; 02
	const LANDMARK_ROUTE_1           ; 03
	const LANDMARK_CITY_2            ; 04
	const LANDMARK_SPECIAL_2         ; 05
	const LANDMARK_ROUTE_2           ; 06
	const LANDMARK_CITY_3            ; 07
	const LANDMARK_ROUTE_3           ; 08
	const LANDMARK_SPECIAL_3         ; 09
	const LANDMARK_ROUTE_4           ; 0a
	const LANDMARK_CITY_4            ; 0b
	const LANDMARK_ROUTE_5           ; 0c
	const LANDMARK_SPECIAL_4         ; 0d
	const LANDMARK_CITY_5            ; 0e
	const LANDMARK_ROUTE_6           ; 0f
	const LANDMARK_SPECIAL_5         ; 10
	const LANDMARK_ROUTE_7           ; 11
	const LANDMARK_ROUTE_8           ; 12
	const LANDMARK_CITY_6            ; 13
	const LANDMARK_SPECIAL_6         ; 14
	const LANDMARK_ROUTE_9           ; 15
	const LANDMARK_REST_AREA         ; 16
	const LANDMARK_ROUTE_10          ; 17
	const LANDMARK_ROUTE_11          ; 18
	const LANDMARK_ROUTE_12          ; 19
	const LANDMARK_CITY_7            ; 1a
	const LANDMARK_SPECIAL_7         ; 1b
	const LANDMARK_ROUTE_13          ; 1c
	const LANDMARK_CITY_8            ; 1d
	const LANDMARK_ROUTE_14          ; 1e
	const LANDMARK_CITY_9            ; 1f
	const LANDMARK_SPECIAL_8         ; 20
	const LANDMARK_ROUTE_15          ; 21
	const LANDMARK_SPECIAL_9         ; 22
	const LANDMARK_ROUTE_16          ; 23
	const LANDMARK_CITY_10           ; 24
	const LANDMARK_ROUTE_17          ; 25
	const LANDMARK_SPECIAL_10        ; 26
	const LANDMARK_SHIP              ; 27

KANTO_LANDMARK EQU const_value
	const LANDMARK_ISLAND            ; 28
	const LANDMARK_GYM_1             ; 29
	const LANDMARK_GYM_2             ; 2a
	const LANDMARK_GYM_3             ; 2b
	const LANDMARK_GYM_4             ; 2c
	const LANDMARK_ELITE_HALL        ; 2d

NUM_LANDMARKS EQU const_value

; used in CaughtData
	const_def $7f, -1
	const LANDMARK_EVENT             ; $7f
	const LANDMARK_GIFT              ; $7e

; Regions
	const_def
	const JOHTO_REGION ; 0
	const KANTO_REGION ; 1
NUM_REGIONS EQU const_value
