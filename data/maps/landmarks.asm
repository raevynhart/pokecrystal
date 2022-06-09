landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	landmark  -8, -16, SpecialMapName
	landmark  44,  52, City1Name
	landmark  44,  44, Special1Name
	landmark  60,  52, Route1Name
	landmark  68,  44, City2Name
	landmark  76,  36, Special2Name
	landmark  92,  44, Route2Name
	landmark 108,  36, City3Name
	landmark 124,  36, Route3Name
	landmark 140,  36, Special3Name
	landmark 140,  48, Route4Name
	landmark 140,  60, City4Name
	landmark 140,  76, Route5Name
	landmark 148,  84, Special4Name
	landmark 132,  84, City5Name
	landmark 116,  84, Route6Name
	landmark 116,  92, Special5Name
	landmark 108,  76, Route7Name
	landmark 108,  60, Route8Name
	landmark 116,  60, City6Name
	landmark 124,  60, Special6Name
	landmark  84,  68, Route9Name
	landmark  68,  60, RestAreaName
	landmark  52,  76, Route10Name
	landmark  36,  84, Route11Name
	landmark  20,  76, Route12Name
	landmark  20,  68, City7Name
	landmark  24,  68, Special7Name
	landmark  20,  92, Route13Name
	landmark  20, 100, City8Name
	landmark  28, 108, Route14Name
	landmark  44, 108, City9Name
	landmark  52,  92, Special8Name
	landmark  44, 120, Route15Name
	landmark  44, 132, Special9Name
	landmark  64, 132, Route16Name
	landmark  84, 132, City10Name
	landmark  84, 120, Route17Name
	landmark  84, 100, Special10Name
	landmark  12,  36, ShipName
	assert_table_length KANTO_LANDMARK
	landmark  52,  92, IslandName
	landmark  52,  76, Gym1Name
	landmark  52,  64, Gym2Name
	landmark  52,  52, Gym3Name
	landmark  64,  52, Gym4Name
	landmark  76,  52, EliteHallName
	assert_table_length NUM_LANDMARKS

SpecialMapName:      db "SPECIAL@"
City1Name:           db "NEW BARK¯TOWN@"
City2Name:           db "CHERRYGROVE¯CITY@"
City3Name:           db "VIOLET CITY@"
City4Name:           db "AZALEA TOWN@"
City5Name:           db "GOLDENROD¯CITY@"
City6Name:           db "ECRUTEAK¯CITY@"
City7Name:           db "OLIVINE¯CITY@"
City8Name:           db "CIANWOOD¯CITY@"
City9Name:           db "MAHOGANY¯TOWN@"
City10Name:          db "BLACKTHORN¯CITY@"
Special1Name:        db "LAKE OF¯RAGE@"
Special2Name:        db "SILVER CAVE@"
Special3Name:        db "SPROUT¯TOWER@"
Special4Name:        db "RUINS¯OF ALPH@"
Special5Name:        db "UNION CAVE@"
Special6Name:        db "SLOWPOKE¯WELL@"
Special7Name:        db "RADIO TOWER@"
Special8Name:        db "POWER PLANT@"
Special9Name:        db "NATIONAL¯PARK@"
Special10Name:       db "TIN TOWER@"
RestAreaName:        db "LIGHTHOUSE@"
ShipName:            db "WHIRL¯ISLANDS@"
IslandName:          db "MT.MORTAR@"
Gym1Name:            db "DRAGON'S¯DEN@"
Gym2Name:            db "ICE PATH@"
Gym3Name:            db "PALLET TOWN@"
Gym4Name:            db "VIRIDIAN¯CITY@"
EliteHallName:       db "PEWTER CITY@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"