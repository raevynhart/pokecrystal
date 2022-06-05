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
	const LANDMARK_ACADEMY           ; 08
	const LANDMARK_ROUTE_3           ; 09
	const LANDMARK_SPECIAL_3         ; 0a
	const LANDMARK_ROUTE_4           ; 0b
	const LANDMARK_CITY_4            ; 0c
	const LANDMARK_ROUTE_5           ; 0d
	const LANDMARK_SPECIAL_4         ; 0e
	const LANDMARK_CITY_5            ; 0f
	const LANDMARK_ROUTE_6           ; 10
	const LANDMARK_SPECIAL_5         ; 11
	const LANDMARK_ROUTE_7           ; 12
	const LANDMARK_ROUTE_8           ; 13
	const LANDMARK_CITY_6            ; 14
	const LANDMARK_SPECIAL_6         ; 15
	const LANDMARK_ROUTE_9           ; 16
	const LANDMARK_REST_AREA         ; 17
	const LANDMARK_ROUTE_10          ; 18
	const LANDMARK_ROUTE_11          ; 19
	const LANDMARK_ROUTE_12          ; 1a
	const LANDMARK_CITY_7            ; 1b
	const LANDMARK_SPECIAL_7         ; 1c
	const LANDMARK_PORT              ; 1d
	const LANDMARK_ROUTE_13          ; 1e
	const LANDMARK_CITY_8            ; 1f
	const LANDMARK_ROUTE_14          ; 20
	const LANDMARK_CITY_9            ; 21
	const LANDMARK_SPECIAL_8         ; 22
	const LANDMARK_ROUTE_15          ; 23
	const LANDMARK_SPECIAL_9        ; 24
	const LANDMARK_ROUTE_16          ; 25
	const LANDMARK_CITY_10           ; 26
	const LANDMARK_ROUTE_17          ; 27
	const LANDMARK_SPECIAL_10        ; 28
	const LANDMARK_SHIP              ; 29

KANTO_LANDMARK EQU const_value
	const LANDMARK_SHIP              ; 2a
	const LANDMARK_ISLAND            ; 2b
	const LANDMARK_GYM_1             ; 2c
	const LANDMARK_GYM_2             ; 2d
	const LANDMARK_GYM_3             ; 2e
	const LANDMARK_GYM_4             ; 2f
	const LANDMARK_ELITE_HALL        ; 30

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
