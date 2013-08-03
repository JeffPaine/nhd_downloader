# nhd_downloader

A simple makefile for downloading the [National Hydrography Dataset (NHD)](http://nhd.usgs.gov/).

## Download

From the command line:

```bash
$ wget https://github.com/JeffPaine/nhd_downloader/archive/master.zip
$ unzip master.zip -d nhd_downloader
$ cd nhd_downloader/
```

Then, run a command as described below to download the data you need. Zip files will be saved to `zip/` and the resulting gdb files will be unzipped to `gdb/`.

## Usage

### All Subregions

```bash
$ make subregions
```

These are subregions ([HUC 4](http://water.usgs.gov/GIS/huc.html)) as defined by the [Watershed Boundary Dataset](http://nhd.usgs.gov/wbd.html). Download size: ~12.8 Gigabytes

### Single Subregion

```bash
$ make REPLACE_WITH_SUBREGION_HUC_CODE
```

See the Makefile for example subregion codes and names.

### All States

```bash
$ make states
```

Download size: ~17.5 Gigabytes. Note: this will cause overlap and duplication of data as it includes reaches that extend out of a state's boundaries. Hence, the significantly larger download size.

### Single State

```bash
$ make REPLACE_WITH_STATE_TWO_LETTER_ABBREVIATION
```

### Delete All Downloaded / Unzipped Files

```bash
$ make clean
```
