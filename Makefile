# Download the National Hydrography Dataset (NHD)

SUB_REGIONS = \
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

SUB_REGIONS_FTP_URL = ftp://nhdftp.usgs.gov/DataSets/Staged/SubRegions/FileGDB/HighResolution/

STATES = \
		AK AL AR AZ CA CO CT DC DE FL GA HI IA ID IL IN \
		KS KY LA MA MD ME MI MN MO MS MT NC ND NE NH NJ \
		NM NV NY OH OK OR PA PR RI SC SD TN TX UT VA VI \
		VT WA WI WV WY

STATES_FTP_URL = ftp://nhdftp.usgs.gov/DataSets/Staged/States/FileGDB/HighResolution/


all: sub_regions

sub_regions: $(patsubst %,gdb/NHDH%.gdb,$(SUB_REGIONS))

states: $(patsubst %,zip/NHDH_%_931v210.zip,$(STATES))

clean:
	rm -rf zip/
	rm -rf gdb/


# For downloading one state at a time
AK: gdb/NHDH_AK.gdb
AL: gdb/NHDH_AL.gdb
AR: gdb/NHDH_AR.gdb
AZ: gdb/NHDH_AZ.gdb
CA: gdb/NHDH_CA.gdb
CO: gdb/NHDH_CO.gdb
CT: gdb/NHDH_CT.gdb
DC: gdb/NHDH_DC.gdb
DE: gdb/NHDH_DE.gdb
FL: gdb/NHDH_FL.gdb
GA: gdb/NHDH_GA.gdb
HI: gdb/NHDH_HI.gdb
IA: gdb/NHDH_IA.gdb
ID: gdb/NHDH_ID.gdb
IL: gdb/NHDH_IL.gdb
IN: gdb/NHDH_IN.gdb
KS: gdb/NHDH_KS.gdb
KY: gdb/NHDH_KY.gdb
LA: gdb/NHDH_LA.gdb
MA: gdb/NHDH_MA.gdb
MD: gdb/NHDH_MD.gdb
ME: gdb/NHDH_ME.gdb
MI: gdb/NHDH_MI.gdb
MN: gdb/NHDH_MN.gdb
MO: gdb/NHDH_MO.gdb
MS: gdb/NHDH_MS.gdb
MT: gdb/NHDH_MT.gdb
NC: gdb/NHDH_NC.gdb
ND: gdb/NHDH_ND.gdb
NE: gdb/NHDH_NE.gdb
NH: gdb/NHDH_NH.gdb
NJ: gdb/NHDH_NJ.gdb
NM: gdb/NHDH_NM.gdb
NV: gdb/NHDH_NV.gdb
NY: gdb/NHDH_NY.gdb
OH: gdb/NHDH_OH.gdb
OK: gdb/NHDH_OK.gdb
OR: gdb/NHDH_OR.gdb
PA: gdb/NHDH_PA.gdb
PR: gdb/NHDH_PR.gdb
RI: gdb/NHDH_RI.gdb
SC: gdb/NHDH_SC.gdb
SD: gdb/NHDH_SD.gdb
TN: gdb/NHDH_TN.gdb
TX: gdb/NHDH_TX.gdb
UT: gdb/NHDH_UT.gdb
VA: gdb/NHDH_VA.gdb
VI: gdb/NHDH_VI.gdb
VT: gdb/NHDH_VT.gdb
WA: gdb/NHDH_WA.gdb
WI: gdb/NHDH_WI.gdb
WV: gdb/NHDH_WV.gdb
WY: gdb/NHDH_WY.gdb

# For downloading one sub-region at a time
0101: gdb/NHDH0101.gdb
0102: gdb/NHDH0102.gdb
0103: gdb/NHDH0103.gdb
0104: gdb/NHDH0104.gdb
0105: gdb/NHDH0105.gdb
0106: gdb/NHDH0106.gdb
0107: gdb/NHDH0107.gdb
0108: gdb/NHDH0108.gdb
0109: gdb/NHDH0109.gdb
0110: gdb/NHDH0110.gdb
0202: gdb/NHDH0202.gdb
0203: gdb/NHDH0203.gdb
0204: gdb/NHDH0204.gdb
0205: gdb/NHDH0205.gdb
0206: gdb/NHDH0206.gdb
0207: gdb/NHDH0207.gdb
0208: gdb/NHDH0208.gdb
0301: gdb/NHDH0301.gdb
0302: gdb/NHDH0302.gdb
0303: gdb/NHDH0303.gdb
0304: gdb/NHDH0304.gdb
0305: gdb/NHDH0305.gdb
0306: gdb/NHDH0306.gdb
0307: gdb/NHDH0307.gdb
0308: gdb/NHDH0308.gdb
0309: gdb/NHDH0309.gdb
0310: gdb/NHDH0310.gdb
0311: gdb/NHDH0311.gdb
0312: gdb/NHDH0312.gdb
0313: gdb/NHDH0313.gdb
0314: gdb/NHDH0314.gdb
0315: gdb/NHDH0315.gdb
0316: gdb/NHDH0316.gdb
0317: gdb/NHDH0317.gdb
0318: gdb/NHDH0318.gdb
0401: gdb/NHDH0401.gdb
0402: gdb/NHDH0402.gdb
0403: gdb/NHDH0403.gdb
0404: gdb/NHDH0404.gdb
0405: gdb/NHDH0405.gdb
0406: gdb/NHDH0406.gdb
0407: gdb/NHDH0407.gdb
0408: gdb/NHDH0408.gdb
0409: gdb/NHDH0409.gdb
0410: gdb/NHDH0410.gdb
0411: gdb/NHDH0411.gdb
0412: gdb/NHDH0412.gdb
0413: gdb/NHDH0413.gdb
0414: gdb/NHDH0414.gdb
0415: gdb/NHDH0415.gdb
0501: gdb/NHDH0501.gdb
0502: gdb/NHDH0502.gdb
0503: gdb/NHDH0503.gdb
0504: gdb/NHDH0504.gdb
0505: gdb/NHDH0505.gdb
0506: gdb/NHDH0506.gdb
0507: gdb/NHDH0507.gdb
0508: gdb/NHDH0508.gdb
0509: gdb/NHDH0509.gdb
0510: gdb/NHDH0510.gdb
0511: gdb/NHDH0511.gdb
0512: gdb/NHDH0512.gdb
0513: gdb/NHDH0513.gdb
0514: gdb/NHDH0514.gdb
0601: gdb/NHDH0601.gdb
0602: gdb/NHDH0602.gdb
0603: gdb/NHDH0603.gdb
0604: gdb/NHDH0604.gdb
0701: gdb/NHDH0701.gdb
0702: gdb/NHDH0702.gdb
0703: gdb/NHDH0703.gdb
0704: gdb/NHDH0704.gdb
0705: gdb/NHDH0705.gdb
0706: gdb/NHDH0706.gdb
0707: gdb/NHDH0707.gdb
0708: gdb/NHDH0708.gdb
0709: gdb/NHDH0709.gdb
0710: gdb/NHDH0710.gdb
0711: gdb/NHDH0711.gdb
0712: gdb/NHDH0712.gdb
0713: gdb/NHDH0713.gdb
0714: gdb/NHDH0714.gdb
0801: gdb/NHDH0801.gdb
0802: gdb/NHDH0802.gdb
0803: gdb/NHDH0803.gdb
0804: gdb/NHDH0804.gdb
0805: gdb/NHDH0805.gdb
0806: gdb/NHDH0806.gdb
0807: gdb/NHDH0807.gdb
0808: gdb/NHDH0808.gdb
0809: gdb/NHDH0809.gdb
0901: gdb/NHDH0901.gdb
0902: gdb/NHDH0902.gdb
0903: gdb/NHDH0903.gdb
0904: gdb/NHDH0904.gdb
1002: gdb/NHDH1002.gdb
1003: gdb/NHDH1003.gdb
1004: gdb/NHDH1004.gdb
1005: gdb/NHDH1005.gdb
1006: gdb/NHDH1006.gdb
1007: gdb/NHDH1007.gdb
1008: gdb/NHDH1008.gdb
1009: gdb/NHDH1009.gdb
1010: gdb/NHDH1010.gdb
1011: gdb/NHDH1011.gdb
1012: gdb/NHDH1012.gdb
1013: gdb/NHDH1013.gdb
1014: gdb/NHDH1014.gdb
1015: gdb/NHDH1015.gdb
1016: gdb/NHDH1016.gdb
1017: gdb/NHDH1017.gdb
1018: gdb/NHDH1018.gdb
1019: gdb/NHDH1019.gdb
1020: gdb/NHDH1020.gdb
1021: gdb/NHDH1021.gdb
1022: gdb/NHDH1022.gdb
1023: gdb/NHDH1023.gdb
1024: gdb/NHDH1024.gdb
1025: gdb/NHDH1025.gdb
1026: gdb/NHDH1026.gdb
1027: gdb/NHDH1027.gdb
1028: gdb/NHDH1028.gdb
1029: gdb/NHDH1029.gdb
1030: gdb/NHDH1030.gdb
1101: gdb/NHDH1101.gdb
1102: gdb/NHDH1102.gdb
1103: gdb/NHDH1103.gdb
1104: gdb/NHDH1104.gdb
1105: gdb/NHDH1105.gdb
1106: gdb/NHDH1106.gdb
1107: gdb/NHDH1107.gdb
1108: gdb/NHDH1108.gdb
1109: gdb/NHDH1109.gdb
1110: gdb/NHDH1110.gdb
1111: gdb/NHDH1111.gdb
1112: gdb/NHDH1112.gdb
1113: gdb/NHDH1113.gdb
1114: gdb/NHDH1114.gdb
1201: gdb/NHDH1201.gdb
1202: gdb/NHDH1202.gdb
1203: gdb/NHDH1203.gdb
1204: gdb/NHDH1204.gdb
1205: gdb/NHDH1205.gdb
1206: gdb/NHDH1206.gdb
1207: gdb/NHDH1207.gdb
1208: gdb/NHDH1208.gdb
1209: gdb/NHDH1209.gdb
1210: gdb/NHDH1210.gdb
1211: gdb/NHDH1211.gdb
1301: gdb/NHDH1301.gdb
1302: gdb/NHDH1302.gdb
1303: gdb/NHDH1303.gdb
1304: gdb/NHDH1304.gdb
1305: gdb/NHDH1305.gdb
1306: gdb/NHDH1306.gdb
1307: gdb/NHDH1307.gdb
1308: gdb/NHDH1308.gdb
1309: gdb/NHDH1309.gdb
1401: gdb/NHDH1401.gdb
1402: gdb/NHDH1402.gdb
1403: gdb/NHDH1403.gdb
1404: gdb/NHDH1404.gdb
1405: gdb/NHDH1405.gdb
1406: gdb/NHDH1406.gdb
1407: gdb/NHDH1407.gdb
1408: gdb/NHDH1408.gdb
1501: gdb/NHDH1501.gdb
1502: gdb/NHDH1502.gdb
1503: gdb/NHDH1503.gdb
1504: gdb/NHDH1504.gdb
1505: gdb/NHDH1505.gdb
1506: gdb/NHDH1506.gdb
1507: gdb/NHDH1507.gdb
1508: gdb/NHDH1508.gdb
1601: gdb/NHDH1601.gdb
1602: gdb/NHDH1602.gdb
1603: gdb/NHDH1603.gdb
1604: gdb/NHDH1604.gdb
1605: gdb/NHDH1605.gdb
1606: gdb/NHDH1606.gdb
1701: gdb/NHDH1701.gdb
1702: gdb/NHDH1702.gdb
1703: gdb/NHDH1703.gdb
1704: gdb/NHDH1704.gdb
1705: gdb/NHDH1705.gdb
1706: gdb/NHDH1706.gdb
1707: gdb/NHDH1707.gdb
1708: gdb/NHDH1708.gdb
1709: gdb/NHDH1709.gdb
1710: gdb/NHDH1710.gdb
1711: gdb/NHDH1711.gdb
1712: gdb/NHDH1712.gdb
1801: gdb/NHDH1801.gdb
1802: gdb/NHDH1802.gdb
1803: gdb/NHDH1803.gdb
1804: gdb/NHDH1804.gdb
1805: gdb/NHDH1805.gdb
1806: gdb/NHDH1806.gdb
1807: gdb/NHDH1807.gdb
1808: gdb/NHDH1808.gdb
1809: gdb/NHDH1809.gdb
1810: gdb/NHDH1810.gdb
1901: gdb/NHDH1901.gdb
1902: gdb/NHDH1902.gdb
1903: gdb/NHDH1903.gdb
1904: gdb/NHDH1904.gdb
1905: gdb/NHDH1905.gdb
1906: gdb/NHDH1906.gdb
1907: gdb/NHDH1907.gdb
2001: gdb/NHDH2001.gdb
2002: gdb/NHDH2002.gdb
2003: gdb/NHDH2003.gdb
2004: gdb/NHDH2004.gdb
2005: gdb/NHDH2005.gdb
2006: gdb/NHDH2006.gdb
2007: gdb/NHDH2007.gdb
2008: gdb/NHDH2008.gdb
2101: gdb/NHDH2101.gdb
2102: gdb/NHDH2102.gdb
2201: gdb/NHDH2201.gdb
2202: gdb/NHDH2202.gdb
2203: gdb/NHDH2203.gdb


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
# Download NHD data, by watershed sub-region
# ###################################################################
zip/NHDH%_931v210.zip:
	mkdir -p $(dir $@)
	wget '$(SUB_REGIONS_FTP_URL)$(notdir $@)' --output-document=$@.download
	mv $@.download $@

# Unzip zip files to gdb directory
# Using touch to update the modification time of the extracted files so make doesn't try to update them every run
gdb/NHDH%.gdb: zip/NHDH%_931v210.zip
	mkdir -p $(dir $@)
	unzip -q -n -d gdb $<
	touch $@
	touch $@/*
