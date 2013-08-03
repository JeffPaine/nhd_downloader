# nhd_downloader

A simple makefile for downloading the [National Hydrography Dataset (NHD)](http://nhd.usgs.gov/).

## Usage

From the command line, in the project directory:

### Download All Subregions

    make sub_regions

Size: ~12.8 Gigabytes

### Download Single Sub-Region

    make REPLACE_WITH_SUB-REGION_HUC_CODE

### Download All States

    make states

Size: ~17.5 Gigabytes

Note: this will cause some overlap / duplication in data as it includes reaches that extend out of a state's boundaries. Hence, the larger download size.

### Download Single State

    make REPLACE_WITH_STATE_TWO_LETTER_ABBREVIATION

### Delete Downloaded Files

    make clean
