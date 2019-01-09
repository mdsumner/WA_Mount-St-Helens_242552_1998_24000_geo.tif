## Mt St Helens topo map image

* go to https://ngmdb.usgs.gov/topoview/viewer

**we are on TERRAIN tab (top left corner)**

* search "mt st helens" under Map Name

* found "Mount St Helens, WA 1998 (2003 ed.) Scale 1:24000"

* click "Download GeoTiff" (12 Mb)
*  (cannot see a download link, says "GeoTIFF" but has .tfw, .tif.prj and .tif.xml - it actually is a GeoTIFF so I discard those files)

```
class       : RasterBrick
dimensions  : 8067, 6608, 53306736, 3  (nrow, ncol, ncell, nlayers)
resolution  : 2.032, 2.032  (x, y)
extent      : -6621.321, 6806.135, -1783.527, 14608.62  (xmin, xmax, ymin, ymax)
coord. ref. : +proj=lcc +lat_1=33 +lat_2=45 +lat_0=46.125 +lon_0=-122.1879999999992 +x_0=0 +y_0=0 +datum=NAD27 +units=m +no_defs +ellps=clrk66 +nadgrids=@conus,@alaska,@ntv2_0.gsb,@ntv1_can.dat
data source : WA_Mount St Helens_242552_1998_24000_geo.tif
names       : WA_Mount_St_Helens_242552_1998_24000_geo.1, WA_Mount_St_Helens_242552_1998_24000_geo.2, WA_Mount_St_Helens_242552_1998_24000_geo.3
min values  :                                          0,                                          0,                                          0
max values  :
```

## Mt St Helens DEM

Found a link here: https://pubs.er.usgs.gov/publication/ds904

```R
u <- "https://pubs.usgs.gov/ds/0904/downloads/10m_DEM.zip"
f <- basename(u)
curl::curl_download(u, f)
unzip(f)
dem <- raster::raster("10m_DEM/msh2009dem10")
```

Done!


```
class       : RasterLayer
dimensions  : 2282, 3717, 8482194  (nrow, ncol, ncell)
resolution  : 10, 10  (x, y)
extent      : 532622.3, 569792.3, 5114421, 5137241  (xmin, xmax, ymin, ymax)
coord. ref. : +proj=utm +zone=10 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs
data source : C:\Users\michae_sum\Documents\dem\10m_DEM\msh2009dem10
names       : msh2009dem10
values      : 227.2937, 2537.35  (min, max)

```
