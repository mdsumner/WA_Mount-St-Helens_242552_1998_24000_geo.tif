library(raster)

dem <- raster::raster("10m_DEM/msh2009dem10")
img <- raster::brick("WA_Mount St Helens_242552_1998_24000_geo.tif")

library(anglr)
## note that this makes a copy of the RGB image on disk in PNG format
mesh <- as.mesh3d(dem, image_texture = img)

plot3d(mesh)
rgl::aspect3d("iso")
