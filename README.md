All data are projected in Alaska Albers Equal Area with (unit feet) 
unless otherwise specified (EPSG Code 2964). The dataset contains a
collection of geodata from several sources with different licenses. 
These licenses have to be respected by the user.

### 1) GTOPO30 - Alaska elevation model (GRASS)

Information on GTOPO30 data (global digital elevation model (DEM) with a 
horizontal grid spacing of 30 arc seconds (1 kilometer)
are available at:

http://edc.usgs.gov/products/elevation/gtopo30/gtopo30.html

### 3) AVHRR Global Land Cover Classification (ERDAS IMG)

Information on AVHRR data (Global Land Cover Classification) are available at:

http://glcf.umiacs.umd.edu/data/landcover/description.shtml

The data are classified and colored according to information from glcf. Both
color and reclass tables are provided with the data. 

### 4) VMAP0 - Vector Map Level 0 from 09/2000 (Shape)

The VMAP0 dataset has been converted from VPF format to SHP format
and kindly provided by Andras Fabian. Then the data were adapted for alaska
dataset. For further information about the original dataset, please refer to

http://gis-lab.info/qa/vmap0-eng.html

Layers included in the alaska dataset are:

- alaska -> Political Boundary (GRASS Polygone)
- trees -> Forest > 10 km2 (Polygone)
- swamp -> Swamp/Marsh > 10 km2 (Polygone)
- tundra -> Tundra > 10 km2 (Polygone)
- landice -> Land ice > 10 km2 (Polygone)
- grassland -> Grassland > 10 km2 (Polygone)
- builtups -> Built-Up Areas (Polygone)
- railroads -> Railroads (Line)
- trails -> Trails and Tracks (Line)
- pipelines -> Pipelines (Line)
- rivers -> Rivers and intermittend rivers (GRASS Line)
- majrivers -> Major rivers (Line)
- airports -> Airports (GRASS Point)
- popp -> Population Points (Buildings/Settlements) (Point)
- storagep -> Storage Point Features (Point)

### 5) GADM Shape - Regions of Alaska
 
This layer was extracted and reprojected based on the GADM dataset 
http://www.gadm.org/ of the United States of America. This dataset is 
freely available for academic and other non-commercial use.

### 6) CVS table - 150 random elevation points for Alaska

This layer was generated from the gtopo30 dataset in GRASS and can 
be used with the delimited text and the interpolation plugin in QGIS.

### 7) GPS - waypoints in GPX format

This layer was created for the QGIS demo dataset using the
digitizing feature of the QGIS GPS plugin. The waypoints show 4 national 
monuments in Alaska. The CRS of the gpx file is latlon, WGS84.

### 8) GRASS mapset

A collection of vector and raster layers was created for the QGIS demo dataset.
The vector layers were derived from VMAP0 data. The raster layer is the gtopo30
layer described in item 1). 

### 9) GML layer

A polygon type GML layer of the alaska lakes. The vector layer was derived from 
VMAP0 data.

### 10) Shape layer with Climate Data

A point shape layer with some climate data for the diagram overlay feature
collected from http://climate.gi.alaska.edu/Climate/Temperature/mean_temp.html. 

- T_F_JAN  (Average temperature (°F), 1971- 2000 in Jan
- T_F_JUL  (Average temperature (°F), 1971- 2000 in 
- T_F_MEAN (Average temperature (°F), 1971- 2000 in 

### 11) Hillshade GeoTiff

An exctract of the Natural Earth global shaded relief from 
http://www.naturalearthdata.com/downloads/50m-raster-data/50m-shaded-relief/.
