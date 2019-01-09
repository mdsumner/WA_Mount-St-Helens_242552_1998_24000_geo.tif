library(raster)

dem <- raster::raster("10m_DEM/msh2009dem10")
img <- raster::brick("WA_Mount St Helens_242552_1998_24000_geo.tif")


## crop the dem to just the bit we have image for
dem <- crop(dem, projectExtent(img, dem))

library(quadmesh)
## note that this makes a copy of the RGB image on disk in PNG format
qm <- quadmesh(dem, texture = img)

library(rgl)
shade3d(qm)
bg3d("grey")
