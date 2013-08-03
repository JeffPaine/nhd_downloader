# Download the National Hydrography Dataset (NHD)

SUBREGIONS = \
		0101 0102 0103 0104 0105 0106 0107 0108 0109 0110 0202 0203 0204 0205 0206 \
		0207 0208 0301 0302 0303 0304 0305 0306 0307 0308 0309 0310 0311 0312 0313 \
		0314 0315 0316 0317 0318 0401 0402 0403 0404 0405 0406 0407 0408 0409 0410 \
		0411 0412 0413 0414 0415 0501 0502 0503 0504 0505 0506 0507 0508 0509 0510 \
		0511 0512 0513 0514 0601 0602 0603 0604 0701 0702 0703 0704 0705 0706 0707 \
		0708 0709 0710 0711 0712 0713 0714 0801 0802 0803 0804 0805 0806 0807 0808 \
		0809 0901 0902 0903 0904 1002 1003 1004 1005 1006 1007 1008 1009 1010 1011 \
		1012 1013 1014 1015 1016 1017 1018 1019 1020 1021 1022 1023 1024 1025 1026 \
		1027 1028 1029 1030 1101 1102 1103 1104 1105 1106 1107 1108 1109 1110 1111 \
		1112 1113 1114 1201 1202 1203 1204 1205 1206 1207 1208 1209 1210 1211 1301 \
		1302 1303 1304 1305 1306 1307 1308 1309 1401 1402 1403 1404 1405 1406 1407 \
		1408 1501 1502 1503 1504 1505 1506 1507 1508 1601 1602 1603 1604 1605 1606 \
		1701 1702 1703 1704 1705 1706 1707 1708 1709 1710 1711 1712 1801 1802 1803 \
		1804 1805 1806 1807 1808 1809 1810 1901 1902 1903 1904 1905 1906 1907 2001 \
		2002 2003 2004 2005 2006 2007 2008 2101 2102 2201 2202 2203

SUBREGIONS_FTP_URL = ftp://nhdftp.usgs.gov/DataSets/Staged/SubRegions/FileGDB/HighResolution/

STATES = \
		AK AL AR AZ CA CO CT DC DE FL GA HI IA ID IL IN \
		KS KY LA MA MD ME MI MN MO MS MT NC ND NE NH NJ \
		NM NV NY OH OK OR PA PR RI SC SD TN TX UT VA VI \
		VT WA WI WV WY

STATES_FTP_URL = ftp://nhdftp.usgs.gov/DataSets/Staged/States/FileGDB/HighResolution/


all: subregions

subregions: $(patsubst %,gdb/NHDH%.gdb,$(SUBREGIONS))

states: $(patsubst %,zip/NHDH_%_931v210.zip,$(STATES))

clean:
	rm -rf zip/
	rm -rf gdb/


# For downloading one state at a time
AK: gdb/NHDH_AK.gdb  # Alaska
AL: gdb/NHDH_AL.gdb  # Alabama
AR: gdb/NHDH_AR.gdb  # Arkansas
AZ: gdb/NHDH_AZ.gdb  # Arizona
CA: gdb/NHDH_CA.gdb  # California
CO: gdb/NHDH_CO.gdb  # Colorado
CT: gdb/NHDH_CT.gdb  # Connecticut
DC: gdb/NHDH_DC.gdb  # District of Columbia
DE: gdb/NHDH_DE.gdb  # Delaware
FL: gdb/NHDH_FL.gdb  # Florida
GA: gdb/NHDH_GA.gdb  # Georgia
HI: gdb/NHDH_HI.gdb  # Hawaii
IA: gdb/NHDH_IA.gdb  # Iowa
ID: gdb/NHDH_ID.gdb  # Idaho
IL: gdb/NHDH_IL.gdb  # Illinois
IN: gdb/NHDH_IN.gdb  # Indiana
KS: gdb/NHDH_KS.gdb  # Kansas
KY: gdb/NHDH_KY.gdb  # Kentucky
LA: gdb/NHDH_LA.gdb  # Louisiana
MA: gdb/NHDH_MA.gdb  # Massachusetts
MD: gdb/NHDH_MD.gdb  # Maryland
ME: gdb/NHDH_ME.gdb  # Maine
MI: gdb/NHDH_MI.gdb  # Michigan
MN: gdb/NHDH_MN.gdb  # Minnesota
MO: gdb/NHDH_MO.gdb  # Missouri
MS: gdb/NHDH_MS.gdb  # Mississippi
MT: gdb/NHDH_MT.gdb  # Montana
NC: gdb/NHDH_NC.gdb  # North Carolina
ND: gdb/NHDH_ND.gdb  # North Dakota
NE: gdb/NHDH_NE.gdb  # Nebraska
NH: gdb/NHDH_NH.gdb  # New Hampshire
NJ: gdb/NHDH_NJ.gdb  # New Jersey
NM: gdb/NHDH_NM.gdb  # New Mexico
NV: gdb/NHDH_NV.gdb  # Nevada
NY: gdb/NHDH_NY.gdb  # New York
OH: gdb/NHDH_OH.gdb  # Ohio
OK: gdb/NHDH_OK.gdb  # Oklahoma
OR: gdb/NHDH_OR.gdb  # Oregon
PA: gdb/NHDH_PA.gdb  # Pennsylvania
PR: gdb/NHDH_PR.gdb  # Puerto Rico
RI: gdb/NHDH_RI.gdb  # Rhode Island
SC: gdb/NHDH_SC.gdb  # South Carolina
SD: gdb/NHDH_SD.gdb  # South Dakota
TN: gdb/NHDH_TN.gdb  # Tennessee
TX: gdb/NHDH_TX.gdb  # Texas
UT: gdb/NHDH_UT.gdb  # Utah
VA: gdb/NHDH_VA.gdb  # Virginia
VI: gdb/NHDH_VI.gdb  # Virgin Islands
VT: gdb/NHDH_VT.gdb  # Vermont
WA: gdb/NHDH_WA.gdb  # Washington
WI: gdb/NHDH_WI.gdb  # Wisconsin
WV: gdb/NHDH_WV.gdb  # West Virginia
WY: gdb/NHDH_WY.gdb  # Wyoming

# For downloading one subregion at a time
0101: gdb/NHDH0101.gdb  # St. John
0102: gdb/NHDH0102.gdb  # Penobscot
0103: gdb/NHDH0103.gdb  # Kennebec
0104: gdb/NHDH0104.gdb  # Androscoggin
0105: gdb/NHDH0105.gdb  # Maine Coastal
0106: gdb/NHDH0106.gdb  # Saco
0107: gdb/NHDH0107.gdb  # Merrimack
0108: gdb/NHDH0108.gdb  # Connecticut
0109: gdb/NHDH0109.gdb  # Massachusetts-Rhode Island Coastal
0110: gdb/NHDH0110.gdb  # Connecticut Coastal
0202: gdb/NHDH0202.gdb  # Upper Hudson
0203: gdb/NHDH0203.gdb  # Lower Hudson-Long Island
0204: gdb/NHDH0204.gdb  # Delaware-Mid Atlantic Coastal
0205: gdb/NHDH0205.gdb  # Susquehanna
0206: gdb/NHDH0206.gdb  # Upper Chesapeake
0207: gdb/NHDH0207.gdb  # Potomac
0208: gdb/NHDH0208.gdb  # Lower Chesapeake
0301: gdb/NHDH0301.gdb  # Chowan-Roanoke
0302: gdb/NHDH0302.gdb  # Neuse-Pamlico
0303: gdb/NHDH0303.gdb  # Cape Fear
0304: gdb/NHDH0304.gdb  # Pee Dee
0305: gdb/NHDH0305.gdb  # Edisto-Santee
0306: gdb/NHDH0306.gdb  # Ogeechee-Savannah
0307: gdb/NHDH0307.gdb  # Altamaha-St. Marys
0308: gdb/NHDH0308.gdb  # St. Johns
0309: gdb/NHDH0309.gdb  # Southern Florida
0310: gdb/NHDH0310.gdb  # Peace-Tampa Bay
0311: gdb/NHDH0311.gdb  # Suwannee
0312: gdb/NHDH0312.gdb  # Ochlockonee
0313: gdb/NHDH0313.gdb  # Apalachicola
0314: gdb/NHDH0314.gdb  # Choctawhatchee-Escambia
0315: gdb/NHDH0315.gdb  # Alabama
0316: gdb/NHDH0316.gdb  # Mobile-Tombigbee
0317: gdb/NHDH0317.gdb  # Pascagoula
0318: gdb/NHDH0318.gdb  # Pearl
0401: gdb/NHDH0401.gdb  # Western Lake Superior
0402: gdb/NHDH0402.gdb  # Southern Lake Superior-Lake Superior
0403: gdb/NHDH0403.gdb  # Northwestern Lake Michigan
0404: gdb/NHDH0404.gdb  # Southwestern Lake Michigan
0405: gdb/NHDH0405.gdb  # Southeastern Lake Michigan
0406: gdb/NHDH0406.gdb  # Northeastern Lake Michigan-Lake Michigan
0407: gdb/NHDH0407.gdb  # Northwestern Lake Huron
0408: gdb/NHDH0408.gdb  # Southwestern Lake Huron-Lake Huron
0409: gdb/NHDH0409.gdb  # St. Clair-Detroit
0410: gdb/NHDH0410.gdb  # Western Lake Erie
0411: gdb/NHDH0411.gdb  # Southern Lake Erie
0412: gdb/NHDH0412.gdb  # Lake Erie
0413: gdb/NHDH0413.gdb  # Southwestern Lake Ontario
0414: gdb/NHDH0414.gdb  # Southeastern Lake Ontario
0415: gdb/NHDH0415.gdb  # Northeastern Lake Ontario-Lake Ontario-St. Lawrence
0501: gdb/NHDH0501.gdb  # Allegheny
0502: gdb/NHDH0502.gdb  # Monongahela
0503: gdb/NHDH0503.gdb  # Upper Ohio
0504: gdb/NHDH0504.gdb  # Muskingum
0505: gdb/NHDH0505.gdb  # Kanawha
0506: gdb/NHDH0506.gdb  # Scioto
0507: gdb/NHDH0507.gdb  # Big Sandy-Guyandotte
0508: gdb/NHDH0508.gdb  # Great Miami
0509: gdb/NHDH0509.gdb  # Middle Ohio
0510: gdb/NHDH0510.gdb  # Kentucky-Licking
0511: gdb/NHDH0511.gdb  # Green
0512: gdb/NHDH0512.gdb  # Wabash
0513: gdb/NHDH0513.gdb  # Cumberland
0514: gdb/NHDH0514.gdb  # Lower Ohio
0601: gdb/NHDH0601.gdb  # Upper Tennessee
0602: gdb/NHDH0602.gdb  # Middle Tennessee-Hiwassee
0603: gdb/NHDH0603.gdb  # Middle Tennessee-Elk
0604: gdb/NHDH0604.gdb  # Lower Tennessee
0701: gdb/NHDH0701.gdb  # Mississippi Headwaters
0702: gdb/NHDH0702.gdb  # Minnesota
0703: gdb/NHDH0703.gdb  # St. Croix
0704: gdb/NHDH0704.gdb  # Upper Mississippi-Black-Root
0705: gdb/NHDH0705.gdb  # Chippewa
0706: gdb/NHDH0706.gdb  # Upper Mississippi-Maquoketa-Plum
0707: gdb/NHDH0707.gdb  # Wisconsin
0708: gdb/NHDH0708.gdb  # Upper Mississippi-Iowa-Skunk-Wapsipinicon
0709: gdb/NHDH0709.gdb  # Rock
0710: gdb/NHDH0710.gdb  # Des Moines
0711: gdb/NHDH0711.gdb  # Upper Mississippi-Salt
0712: gdb/NHDH0712.gdb  # Upper Illinois
0713: gdb/NHDH0713.gdb  # Lower Illinois
0714: gdb/NHDH0714.gdb  # Upper Mississippi-Kaskaskia-Meramec
0801: gdb/NHDH0801.gdb  # Lower Mississippi-Hatchie
0802: gdb/NHDH0802.gdb  # Lower Mississippi-St. Francis
0803: gdb/NHDH0803.gdb  # Lower Mississippi-Yazoo
0804: gdb/NHDH0804.gdb  # Lower Red-Ouachita
0805: gdb/NHDH0805.gdb  # Boeuf-Tensas
0806: gdb/NHDH0806.gdb  # Lower Mississippi-Big Black
0807: gdb/NHDH0807.gdb  # Lower Mississippi-Lake Maurepas
0808: gdb/NHDH0808.gdb  # Louisiana Coastal
0809: gdb/NHDH0809.gdb  # Lower Mississippi
0901: gdb/NHDH0901.gdb  # Souris
0902: gdb/NHDH0902.gdb  # Red
0903: gdb/NHDH0903.gdb  # Rainy
0904: gdb/NHDH0904.gdb  # Saskatchewan River
1002: gdb/NHDH1002.gdb  # Missouri Headwaters
1003: gdb/NHDH1003.gdb  # Missouri-Marias
1004: gdb/NHDH1004.gdb  # Missouri-Musselshell
1005: gdb/NHDH1005.gdb  # Milk
1006: gdb/NHDH1006.gdb  # Missouri-Poplar
1007: gdb/NHDH1007.gdb  # Upper Yellowstone
1008: gdb/NHDH1008.gdb  # Big Horn
1009: gdb/NHDH1009.gdb  # Powder-Tongue
1010: gdb/NHDH1010.gdb  # Lower Yellowstone
1011: gdb/NHDH1011.gdb  # Missouri-Little Missouri
1012: gdb/NHDH1012.gdb  # Cheyenne
1013: gdb/NHDH1013.gdb  # Missouri-Oahe
1014: gdb/NHDH1014.gdb  # Missouri-White
1015: gdb/NHDH1015.gdb  # Niobrara
1016: gdb/NHDH1016.gdb  # James
1017: gdb/NHDH1017.gdb  # Missouri-Big Sioux
1018: gdb/NHDH1018.gdb  # North Platte
1019: gdb/NHDH1019.gdb  # South Platte
1020: gdb/NHDH1020.gdb  # Platte
1021: gdb/NHDH1021.gdb  # Loup
1022: gdb/NHDH1022.gdb  # Elkhorn
1023: gdb/NHDH1023.gdb  # Missouri-Little Sioux
1024: gdb/NHDH1024.gdb  # Missouri-Nishnabotna
1025: gdb/NHDH1025.gdb  # Republican
1026: gdb/NHDH1026.gdb  # Smoky Hill
1027: gdb/NHDH1027.gdb  # Kansas
1028: gdb/NHDH1028.gdb  # Chariton-Grand
1029: gdb/NHDH1029.gdb  # Gasconade-Osage
1030: gdb/NHDH1030.gdb  # Lower Missouri
1101: gdb/NHDH1101.gdb  # Upper White
1102: gdb/NHDH1102.gdb  # Upper Arkansas
1103: gdb/NHDH1103.gdb  # Middle Arkansas
1104: gdb/NHDH1104.gdb  # Upper Cimarron
1105: gdb/NHDH1105.gdb  # Lower Cimarron
1106: gdb/NHDH1106.gdb  # Arkansas-Keystone
1107: gdb/NHDH1107.gdb  # Neosho-Verdigris
1108: gdb/NHDH1108.gdb  # Upper Canadian
1109: gdb/NHDH1109.gdb  # Lower Canadian
1110: gdb/NHDH1110.gdb  # North Canadian
1111: gdb/NHDH1111.gdb  # Lower Arkansas
1112: gdb/NHDH1112.gdb  # Red Headwaters
1113: gdb/NHDH1113.gdb  # Red-Washita
1114: gdb/NHDH1114.gdb  # Red-Sulphur
1201: gdb/NHDH1201.gdb  # Sabine
1202: gdb/NHDH1202.gdb  # Neches
1203: gdb/NHDH1203.gdb  # Trinity
1204: gdb/NHDH1204.gdb  # Galveston Bay-San Jacinto
1205: gdb/NHDH1205.gdb  # Brazos Headwaters
1206: gdb/NHDH1206.gdb  # Middle Brazos
1207: gdb/NHDH1207.gdb  # Lower Brazos
1208: gdb/NHDH1208.gdb  # Upper Colorado
1209: gdb/NHDH1209.gdb  # Lower Colorado-San Bernard Coastal
1210: gdb/NHDH1210.gdb  # Central Texas Coastal
1211: gdb/NHDH1211.gdb  # Nueces-Southwestern Texas Coastal
1301: gdb/NHDH1301.gdb  # Rio Grande Headwaters
1302: gdb/NHDH1302.gdb  # Rio Grande-Elephant Butte
1303: gdb/NHDH1303.gdb  # Rio Grande-Mimbres
1304: gdb/NHDH1304.gdb  # Rio Grande-Amistad
1305: gdb/NHDH1305.gdb  # Rio Grande Closed Basins
1306: gdb/NHDH1306.gdb  # Upper Pecos
1307: gdb/NHDH1307.gdb  # Lower Pecos
1308: gdb/NHDH1308.gdb  # Rio Grande-Falcon
1309: gdb/NHDH1309.gdb  # Lower Rio Grande
1401: gdb/NHDH1401.gdb  # Colorado Headwaters
1402: gdb/NHDH1402.gdb  # Gunnison
1403: gdb/NHDH1403.gdb  # Upper Colorado-Dolores
1404: gdb/NHDH1404.gdb  # Great Divide-Upper Green
1405: gdb/NHDH1405.gdb  # White-Yampa
1406: gdb/NHDH1406.gdb  # Lower Green
1407: gdb/NHDH1407.gdb  # Upper Colorado-Dirty Devil
1408: gdb/NHDH1408.gdb  # San Juan
1501: gdb/NHDH1501.gdb  # Lower Colorado-Lake Mead
1502: gdb/NHDH1502.gdb  # Little Colorado
1503: gdb/NHDH1503.gdb  # Lower Colorado
1504: gdb/NHDH1504.gdb  # Upper Gila
1505: gdb/NHDH1505.gdb  # Middle Gila
1506: gdb/NHDH1506.gdb  # Salt
1507: gdb/NHDH1507.gdb  # Lower Gila
1508: gdb/NHDH1508.gdb  # Sonora
1601: gdb/NHDH1601.gdb  # Bear
1602: gdb/NHDH1602.gdb  # Great Salt Lake
1603: gdb/NHDH1603.gdb  # Escalante Desert-Sevier Lake
1604: gdb/NHDH1604.gdb  # Black Rock Desert-Humboldt
1605: gdb/NHDH1605.gdb  # Central Lahontan
1606: gdb/NHDH1606.gdb  # Central Nevada Desert Basins
1701: gdb/NHDH1701.gdb  # Kootenai-Pend Oreille-Spokane
1702: gdb/NHDH1702.gdb  # Upper Columbia
1703: gdb/NHDH1703.gdb  # Yakima
1704: gdb/NHDH1704.gdb  # Upper Snake
1705: gdb/NHDH1705.gdb  # Middle Snake
1706: gdb/NHDH1706.gdb  # Lower Snake
1707: gdb/NHDH1707.gdb  # Middle Columbia
1708: gdb/NHDH1708.gdb  # Lower Columbia
1709: gdb/NHDH1709.gdb  # Willamette
1710: gdb/NHDH1710.gdb  # Oregon-Washington Coastal
1711: gdb/NHDH1711.gdb  # Puget Sound
1712: gdb/NHDH1712.gdb  # Oregon Closed Basins
1801: gdb/NHDH1801.gdb  # Klamath-Northern California Coastal
1802: gdb/NHDH1802.gdb  # Sacramento
1803: gdb/NHDH1803.gdb  # Tulare-Buena Vista Lakes
1804: gdb/NHDH1804.gdb  # San Joaquin
1805: gdb/NHDH1805.gdb  # San Francisco Bay
1806: gdb/NHDH1806.gdb  # Central California Coastal
1807: gdb/NHDH1807.gdb  # Southern California Coastal
1808: gdb/NHDH1808.gdb  # North Lahontan
1809: gdb/NHDH1809.gdb  # Northern Mojave-Mono Lake
1810: gdb/NHDH1810.gdb  # Southern Mojave-Salton Sea
1901: gdb/NHDH1901.gdb  # Southeast Alaska
1902: gdb/NHDH1902.gdb  # South Central Alaska
1903: gdb/NHDH1903.gdb  # Southwest Alaska
1904: gdb/NHDH1904.gdb  # Yukon Alaska
1905: gdb/NHDH1905.gdb  # Northwest Alaska
1906: gdb/NHDH1906.gdb  # Arctic Alaska
1907: gdb/NHDH1907.gdb  # Headwaters Yukon-Lake Laberge
2001: gdb/NHDH2001.gdb  # Hawaii
2002: gdb/NHDH2002.gdb  # Maui
2003: gdb/NHDH2003.gdb  # Kahoolawe
2004: gdb/NHDH2004.gdb  # Lanai
2005: gdb/NHDH2005.gdb  # Molokai
2006: gdb/NHDH2006.gdb  # Oahu
2007: gdb/NHDH2007.gdb  # Kauai
2008: gdb/NHDH2008.gdb  # Niihau
2101: gdb/NHDH2101.gdb  # Puerto Rico
2102: gdb/NHDH2102.gdb  # Virgin Islands
2201: gdb/NHDH2201.gdb  # Guam
2202: gdb/NHDH2202.gdb  # Northern Mariana Islands
2203: gdb/NHDH2203.gdb  # American Samoa


# Don't delete intermediate files
# http://www.gnu.org/software/make/manual/make.html#Special-Targets
.SECONDARY:


# ###################################################################
# Download NHD data, by state
# ###################################################################
zip/NHDH_%_931v210.zip:
	mkdir -p $(dir $@)
	wget '$(STATES_FTP_URL)$(notdir $@)' --output-document=$@.download
	mv $@.download $@

# Unzip zip files to gdb directory
# Using touch to update the modification time of the extracted files so make doesn't try to update them every run
gdb/NHDH_%.gdb: zip/NHDH_%_931v210.zip
	mkdir -p $(dir $@)
	unzip -q -n -d gdb $<
	touch $@
	touch $@/*


# ###################################################################
# Download NHD data, by watershed subregion
# ###################################################################
zip/NHDH%_931v210.zip:
	mkdir -p $(dir $@)
	wget '$(SUBREGIONS_FTP_URL)$(notdir $@)' --output-document=$@.download
	mv $@.download $@

# Unzip zip files to gdb directory
# Using touch to update the modification time of the extracted files so make doesn't try to update them every run
gdb/NHDH%.gdb: zip/NHDH%_931v210.zip
	mkdir -p $(dir $@)
	unzip -q -n -d gdb $<
	touch $@
	touch $@/*
