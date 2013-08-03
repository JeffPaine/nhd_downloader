# nhd_downloader

A simple makefile for downloading the [National Hydrography Dataset (NHD)](http://nhd.usgs.gov/).

## Usage

 1. [Download](https://github.com/JeffPaine/nhd_downloader/archive/master.zip) the project
 2. Unzip the archive
 3. In the shell, navigate to the resulting directory
 4. Run one of the commands below depending on your needs

 Or, completely from the command line

```bash
$ wget https://github.com/JeffPaine/nhd_downloader/archive/master.zip
$ unzip master.zip -d nhd_downloader
$ cd nhd_downloader/
```

## Commands

### All Subregions

These are subregions ([HUC 4](http://water.usgs.gov/GIS/huc.html)) as defined by the [Watershed Boundary Dataset](http://nhd.usgs.gov/wbd.html)

```bash
$ make subregions
```

Size: ~12.8 Gigabytes

### Single Subregion

```bash
$ make REPLACE_WITH_SUBREGION_HUC_CODE
```

### All States

```bash
$ make states
```

Size: ~17.5 Gigabytes

Note: this will cause overlap and duplication of data as it includes reaches that extend out of a state's boundaries. Hence, the significantly larger download size.

### Single State

```bash
$ make REPLACE_WITH_STATE_TWO_LETTER_ABBREVIATION
```

### Delete All Downloaded / Unzipped Files

```bash
$ make clean
```
