# Ecosystem

Packages spanning the full geospatial stack — from coordinate systems and file formats to spatial analysis and visualization. Use the search box or click tags to filter.

```@raw html
<script setup>
const tags = [
  "raster", "vector", "io", "analysis", "visualization",
  "datasets", "native-julia", "c-bindings", "makie",
  "projections", "interop", "netcdf", "point-cloud", "formats",
]

const packages = [
  // Core
  { name: "Rasters.jl", description: "Read, write, and manipulate rasterized spatial data - satellite imagery, climate model outputs, and elevation grids", link: "https://rafaqz.github.io/Rasters.jl/dev/", category: "Core", tags: ["raster", "io", "analysis"] },
  { name: "GeometryOps.jl", description: "Fast geometric operations for vector data, designed to work with any GeoInterface.jl compatible geometry", link: "https://juliageo.org/GeometryOps.jl/dev/", category: "Core", tags: ["vector", "analysis", "native-julia"] },
  { name: "GeoDataFrames.jl", description: "Integrate geometric operations directly within DataFrame structures for seamless tabular geospatial workflows", link: "https://www.evetion.nl/GeoDataFrames.jl/dev/", category: "Core", tags: ["vector", "io", "analysis"] },

  // Foundation
  { name: "GeoInterface.jl", description: "Traits and protocols for geospatial data based on the Simple Features standard", link: "https://juliageo.org/GeoInterface.jl/dev/", category: "Foundation", tags: ["interop", "vector", "formats"] },
  { name: "GeoFormatTypes.jl", description: "Wrapper types for passing and dispatching on geographic formats like WKT and GeoJSON", link: "https://github.com/JuliaGeo/GeoFormatTypes.jl", category: "Foundation", tags: ["interop", "formats"] },
  { name: "CommonDataModel.jl", description: "Common data model for NetCDF, GRIB, Zarr, and GeoTIFF datasets", link: "https://github.com/JuliaGeo/CommonDataModel.jl", category: "Foundation", tags: ["interop", "raster", "netcdf"] },

  // Visualization
  { name: "Tyler.jl", description: "Interactive tiled web maps with Makie", link: "https://github.com/MakieOrg/Tyler.jl", category: "Visualization", tags: ["visualization", "makie", "datasets"] },
  { name: "GeoMakie.jl", description: "Geographic projections, coastlines, and map plotting with Makie", link: "https://github.com/MakieOrg/GeoMakie.jl", category: "Visualization", tags: ["visualization", "makie", "projections"] },

  // File I/O - Native Julia
  { name: "NCDatasets.jl", description: "NetCDF files - climate, oceanographic, and scientific data", link: "https://github.com/JuliaGeo/NCDatasets.jl", category: "File I/O - Native Julia", tags: ["io", "native-julia", "netcdf", "raster"] },
  { name: "GeoJSON.jl", description: "Read, write, and manipulate GeoJSON data", link: "https://github.com/JuliaGeo/GeoJSON.jl", category: "File I/O - Native Julia", tags: ["io", "native-julia", "vector", "formats"] },
  { name: "Shapefile.jl", description: "Read and write ESRI Shapefiles", link: "https://github.com/JuliaGeo/Shapefile.jl", category: "File I/O - Native Julia", tags: ["io", "native-julia", "vector", "formats"] },
  { name: "GeoParquet.jl", description: "Geospatial data in Parquet columnar format", link: "https://github.com/JuliaGeo/GeoParquet.jl", category: "File I/O - Native Julia", tags: ["io", "native-julia", "vector", "formats"] },
  { name: "LazIO.jl", description: "Read and write LAZ/LAS point cloud files", link: "https://github.com/evetion/LazIO.jl", category: "File I/O - Native Julia", tags: ["io", "native-julia", "point-cloud"] },
  { name: "STAC.jl", description: "SpatioTemporal Asset Catalogs client", link: "https://github.com/JuliaClimate/STAC.jl", category: "File I/O - Native Julia", tags: ["io", "native-julia", "datasets", "raster"] },
  { name: "FlatGeobuf.jl", description: "Native FlatGeobuf format support", link: "https://github.com/evetion/FlatGeobuf.jl", category: "File I/O - Native Julia", tags: ["io", "native-julia", "vector", "formats"] },

  // File I/O - C Bindings
  { name: "ArchGDAL.jl", description: "High-level GDAL interface for raster and vector data", link: "https://yeesian.com/ArchGDAL.jl", category: "File I/O - C Bindings", tags: ["io", "c-bindings", "raster", "vector"] },
  { name: "GDAL.jl", description: "Low-level wrapper for the GDAL library", link: "https://github.com/JuliaGeo/GDAL.jl", category: "File I/O - C Bindings", tags: ["io", "c-bindings", "raster", "vector"] },
  { name: "LibGEOS.jl", description: "GEOS geometry engine - spatial predicates and operations", link: "https://github.com/JuliaGeo/LibGEOS.jl", category: "File I/O - C Bindings", tags: ["c-bindings", "vector", "analysis"] },
  { name: "Proj.jl", description: "Coordinate transformations and cartographic projections via PROJ", link: "https://github.com/JuliaGeo/Proj.jl", category: "File I/O - C Bindings", tags: ["c-bindings", "projections"] },

  // Datasets
  { name: "MapTiles.jl", description: "Tiled web map utilities and tile coordinates", link: "https://github.com/JuliaGeo/MapTiles.jl", category: "Datasets", tags: ["datasets", "visualization"] },
  { name: "GADM.jl", description: "Global administrative area boundaries", link: "https://github.com/JuliaGeo/GADM.jl", category: "Datasets", tags: ["datasets", "vector"] },
  { name: "NaturalEarth.jl", description: "Natural Earth vector and raster map data", link: "https://github.com/JuliaGeo/NaturalEarth.jl", category: "Datasets", tags: ["datasets", "vector", "raster"] },
  { name: "GeoDatasets.jl", description: "Access to common geographic reference datasets", link: "https://github.com/JuliaGeo/GeoDatasets.jl", category: "Datasets", tags: ["datasets"] },
  { name: "SpaceLiDAR.jl", description: "Satellite altimetry data - ICESat, ICESat-2, GEDI", link: "https://github.com/evetion/SpaceLiDAR.jl", category: "Datasets", tags: ["datasets", "point-cloud", "raster"] },

  // Spatial Analysis
  { name: "Geomorphometry.jl", description: "Terrain operations, cost analysis, and filtering for elevation rasters", link: "https://deltares.github.io/Geomorphometry.jl/v0.7.0/", category: "Spatial Analysis", tags: ["analysis", "raster"] },
  { name: "Geodesy.jl", description: "Coordinate systems (LLA, ECEF, ENU) and geodetic calculations", link: "https://github.com/JuliaGeo/Geodesy.jl", category: "Spatial Analysis", tags: ["analysis", "projections"] },
  { name: "SortTileRecursiveTree.jl", description: "STR-tree spatial index for GeoInterface geometries", link: "https://github.com/asinghvi17/SortTileRecursiveTree.jl", category: "Spatial Analysis", tags: ["analysis", "vector", "interop"] },
]
</script>
```

```@raw html
<PackageExplorer :packages="packages" :tags="tags" />
```
