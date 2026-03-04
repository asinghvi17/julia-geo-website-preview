```@raw html
---
layout: home

hero:
  name: "JuliaGeo"
  text: "Geospatial Data Science in Julia"
  tagline: Read, analyze, and visualize geographic data with Julia's composable, high-performance ecosystem.
  image:
    src: /juliageo.svg
    alt: JuliaGeo Logo
  actions:
    - theme: brand
      text: Get Involved
      link: /index#get-involved
    - theme: alt
      text: View on GitHub
      link: https://github.com/JuliaGeo

features:
  - title: Rasters.jl
    details: Read, write, and manipulate rasterized spatial data — satellite imagery, climate model outputs, and elevation grids.
    link: https://rafaqz.github.io/Rasters.jl/dev/
    linkText: Documentation
  - title: GeometryOps.jl
    details: Fast geometric operations for vector data, designed to work with any GeoInterface.jl compatible geometry.
    link: https://juliageo.org/GeometryOps.jl/dev/
    linkText: Documentation
  - title: GeoDataFrames.jl
    details: Integrate geometric operations directly within DataFrame structures for seamless tabular geospatial workflows.
    link: https://www.evetion.nl/GeoDataFrames.jl/dev/
    linkText: Documentation
---
```

```@raw html
<section class="geo-cta" id="get-involved">
  <h2>Get Involved</h2>
  <p>
    JuliaGeo is a collaborative effort to build comprehensive geospatial tooling for Julia. Join the community, ask questions, and contribute.
  </p>
  <div class="geo-cta-links">
    <a href="https://discourse.julialang.org/c/domain/geo" class="geo-cta-link primary" target="_blank">
      Discourse Forum
    </a>
    <a href="https://julialang.org/slack/" class="geo-cta-link secondary" target="_blank">
      Slack #geo
    </a>
    <a href="https://github.com/JuliaGeo" class="geo-cta-link secondary" target="_blank">
      GitHub
    </a>
  </div>
</section>
```

```@raw html
<script setup>
const tags = [
  "raster", "vector", "io", "analysis", "visualization",
  "datasets", "native-julia", "c-bindings", "makie",
  "projections", "interop", "netcdf", "point-cloud", "formats",
  "tiles", "spherical", "dggs",
]

const packages = [
  // Vector
  { name: "GeometryOps.jl", description: "Fast geometric operations for vector data, designed to work with any GeoInterface.jl compatible geometry", link: "https://juliageo.org/GeometryOps.jl/dev/", category: "Vector", tags: ["vector", "analysis", "native-julia"] },
  { name: "GeoDataFrames.jl", description: "Integrate geometric operations directly within DataFrame structures for seamless tabular geospatial workflows", link: "https://www.evetion.nl/GeoDataFrames.jl/dev/", category: "Vector", tags: ["vector", "io", "analysis"] },
  { name: "GeoInterface.jl", description: "Traits and protocols for geospatial data based on the Simple Features standard", link: "https://juliageo.org/GeoInterface.jl/dev/", category: "Vector", tags: ["vector", "interop", "formats"] },
  { name: "S2Geography.jl", description: "Julia wrapper for S2Geography and S2 libraries for spherical geometry processing", link: "https://github.com/JuliaGeo/S2Geography.jl", category: "Vector", tags: ["vector", "c-bindings", "spherical"] },
  { name: "TGGeometry.jl", description: "Julia wrapper for the tg planar predicate library", link: "https://github.com/JuliaGeo/TGGeometry.jl", category: "Vector", tags: ["vector", "c-bindings", "analysis"] },
  { name: "AreaInterpolation.jl", description: "Interpolation between areas (polygons) in Julia", link: "https://github.com/JuliaGeo/AreaInterpolation.jl", category: "Vector", tags: ["vector", "analysis"] },

  // Raster
  { name: "Rasters.jl", description: "Read, write, and manipulate rasterized spatial data - satellite imagery, climate model outputs, and elevation grids", link: "https://rafaqz.github.io/Rasters.jl/dev/", category: "Raster", tags: ["raster", "io", "analysis"] },
  { name: "CommonDataModel.jl", description: "Common data model for NetCDF, GRIB, Zarr, and GeoTIFF datasets", link: "https://github.com/JuliaGeo/CommonDataModel.jl", category: "Raster", tags: ["raster", "interop", "netcdf"] },
  { name: "NCDatasets.jl", description: "NetCDF files - climate, oceanographic, and scientific data", link: "https://github.com/JuliaGeo/NCDatasets.jl", category: "Raster", tags: ["raster", "io", "netcdf"] },
  { name: "GRIBDatasets.jl", description: "High-level interface to GRIB encoded files", link: "https://github.com/JuliaGeo/GRIBDatasets.jl", category: "Raster", tags: ["raster", "io"] },
  { name: "ZarrDatasets.jl", description: "High-level interface for Zarr datasets", link: "https://github.com/JuliaGeo/ZarrDatasets.jl", category: "Raster", tags: ["raster", "io"] },
  { name: "CFTime.jl", description: "Decoding time units conforming to the CF netCDF conventions", link: "https://github.com/JuliaGeo/CFTime.jl", category: "Raster", tags: ["raster", "netcdf", "interop"] },
  { name: "ASCIIrasters.jl", description: "Read and write ASCII raster files", link: "https://github.com/JuliaGeo/ASCIIrasters.jl", category: "Raster", tags: ["raster", "io", "formats"] },

  // File I/O
  { name: "GeoJSON.jl", description: "Read, write, and manipulate GeoJSON data", link: "https://github.com/JuliaGeo/GeoJSON.jl", category: "File I/O", tags: ["io", "native-julia", "vector", "formats"] },
  { name: "Shapefile.jl", description: "Read and write ESRI Shapefiles", link: "https://github.com/JuliaGeo/Shapefile.jl", category: "File I/O", tags: ["io", "native-julia", "vector", "formats"] },
  { name: "GeoParquet.jl", description: "Geospatial data in Parquet columnar format", link: "https://github.com/JuliaGeo/GeoParquet.jl", category: "File I/O", tags: ["io", "native-julia", "vector", "formats"] },
  { name: "GeoPackage.jl", description: "Read and write GeoPackage (.gpkg) files", link: "https://github.com/JuliaGeo/GeoPackage.jl", category: "File I/O", tags: ["io", "native-julia", "vector", "formats"] },
  { name: "GeoArrow.jl", description: "Geospatial Arrow extension to Arrow.jl", link: "https://github.com/JuliaGeo/GeoArrow.jl", category: "File I/O", tags: ["io", "native-julia", "vector", "formats"] },
  { name: "FlatGeobuf.jl", description: "Native FlatGeobuf format support", link: "https://github.com/evetion/FlatGeobuf.jl", category: "File I/O", tags: ["io", "native-julia", "vector", "formats"] },
  { name: "LazIO.jl", description: "Read and write LAZ/LAS point cloud files", link: "https://github.com/evetion/LazIO.jl", category: "File I/O", tags: ["io", "native-julia", "point-cloud"] },
  { name: "STAC.jl", description: "SpatioTemporal Asset Catalogs client", link: "https://github.com/JuliaClimate/STAC.jl", category: "File I/O", tags: ["io", "native-julia", "datasets", "raster"] },
  { name: "GeoFormatTypes.jl", description: "Wrapper types for dispatching on geographic formats like WKT, GeoJSON, and KML", link: "https://github.com/JuliaGeo/GeoFormatTypes.jl", category: "File I/O", tags: ["io", "interop", "formats"] },

  // C Wrappers
  { name: "ArchGDAL.jl", description: "High-level Julia interface to the GDAL library for raster and vector data", link: "https://yeesian.com/ArchGDAL.jl", category: "C Wrappers", tags: ["io", "c-bindings", "raster", "vector"] },
  { name: "LibGEOS.jl", description: "Julia interface to the GEOS geometry engine for spatial predicates and operations", link: "https://github.com/JuliaGeo/LibGEOS.jl", category: "C Wrappers", tags: ["vector", "c-bindings", "analysis"] },
  { name: "Proj.jl", description: "Julia interface to PROJ for coordinate transformations and cartographic projections", link: "https://github.com/JuliaGeo/Proj.jl", category: "C Wrappers", tags: ["c-bindings", "projections"] },
  { name: "LibSpatialIndex.jl", description: "Spatially indexing kD bounding box data via libspatialindex", link: "https://github.com/JuliaGeo/LibSpatialIndex.jl", category: "C Wrappers", tags: ["c-bindings", "vector", "interop"] },

  // Visualization
  { name: "Tyler.jl", description: "Interactive tiled web maps with Makie", link: "https://github.com/MakieOrg/Tyler.jl", category: "Visualization", tags: ["visualization", "makie", "tiles"] },
  { name: "GeoMakie.jl", description: "Geographic projections, coastlines, and map plotting with Makie", link: "https://github.com/MakieOrg/GeoMakie.jl", category: "Visualization", tags: ["visualization", "makie", "projections"] },
  { name: "Leaflet.jl", description: "LeafletJS mapping library from Julia", link: "https://github.com/JuliaGeo/Leaflet.jl", category: "Visualization", tags: ["visualization"] },

  // Map Tiles
  { name: "MapTiles.jl", description: "Tiled web map utilities and tile coordinates", link: "https://github.com/JuliaGeo/MapTiles.jl", category: "Map Tiles", tags: ["tiles", "visualization"] },
  { name: "TileProviders.jl", description: "Shared collection of map tile providers", link: "https://github.com/JuliaGeo/TileProviders.jl", category: "Map Tiles", tags: ["tiles", "visualization", "datasets"] },
  { name: "VectorTiles.jl", description: "GeoInterface.jl compatible Mapbox vector tiles", link: "https://github.com/JuliaGeo/VectorTiles.jl", category: "Map Tiles", tags: ["tiles", "vector", "formats"] },

  // Datasets
  { name: "GADM.jl", description: "Global administrative area boundaries", link: "https://github.com/JuliaGeo/GADM.jl", category: "Datasets", tags: ["datasets", "vector"] },
  { name: "NaturalEarth.jl", description: "Natural Earth vector and raster map data", link: "https://github.com/JuliaGeo/NaturalEarth.jl", category: "Datasets", tags: ["datasets", "vector", "raster"] },
  { name: "GeoDatasets.jl", description: "Access to common geographic reference datasets", link: "https://github.com/JuliaGeo/GeoDatasets.jl", category: "Datasets", tags: ["datasets"] },
  { name: "SpaceLiDAR.jl", description: "Satellite altimetry data - ICESat, ICESat-2, GEDI", link: "https://github.com/evetion/SpaceLiDAR.jl", category: "Datasets", tags: ["datasets", "point-cloud", "raster"] },
  { name: "TigerLine.jl", description: "Retrieve TIGER/LINE shapefile data from the US Census", link: "https://github.com/JuliaGeo/TigerLine.jl", category: "Datasets", tags: ["datasets", "vector"] },
  { name: "SentinelDataSource.jl", description: "Access ESA Sentinel EOPF data from Julia", link: "https://github.com/JuliaGeo/SentinelDataSource.jl", category: "Datasets", tags: ["datasets", "raster"] },

  // Analysis
  { name: "Geomorphometry.jl", description: "Terrain operations, cost analysis, and filtering for elevation rasters", link: "https://deltares.github.io/Geomorphometry.jl/v0.7.0/", category: "Analysis", tags: ["analysis", "raster"] },

  // DGGS
  { name: "ConservativeRegridding.jl", description: "Conservative interpolation between two grids in two dimensions", link: "https://github.com/JuliaGeo/ConservativeRegridding.jl", category: "DGGS", tags: ["dggs", "raster", "analysis"] },
  { name: "GridInterface.jl", description: "An interface for global grids", link: "https://github.com/JuliaGeo/GridInterface.jl", category: "DGGS", tags: ["dggs", "raster", "interop"] },

  // Infrastructure
  { name: "GDAL.jl", description: "Julia bindings for the GDAL geospatial library", link: "https://github.com/JuliaGeo/GDAL.jl", category: "Infrastructure", tags: ["c-bindings", "raster", "vector"] },
  { name: "Geodesy.jl", description: "Coordinate systems (LLA, ECEF, ENU) and geodetic calculations", link: "https://github.com/JuliaGeo/Geodesy.jl", category: "Infrastructure", tags: ["projections", "interop"] },
  { name: "DE9IM.jl", description: "DE9IM predicate wrappers and traits for Julia", link: "https://github.com/JuliaGeo/DE9IM.jl", category: "Infrastructure", tags: ["vector", "interop"] },
  { name: "SortTileRecursiveTree.jl", description: "STR-tree spatial index for GeoInterface geometries", link: "https://github.com/asinghvi17/SortTileRecursiveTree.jl", category: "Infrastructure", tags: ["vector", "interop"] },
  { name: "CFCoordinateReferenceSystems.jl", description: "CF-convention coordinate reference systems", link: "https://github.com/JuliaGeo/CFCoordinateReferenceSystems.jl", category: "Infrastructure", tags: ["projections", "netcdf", "interop"] },
  { name: "Geo.jl", description: "Meta package to load all composable JuliaGeo packages", link: "https://github.com/JuliaGeo/Geo.jl", category: "Infrastructure", tags: ["interop"] },
]
</script>
```

```@raw html
<section class="geo-ecosystem">
  <div class="geo-ecosystem-header">
    <h2>The Ecosystem</h2>
    <p>Packages spanning the full geospatial stack — from coordinate systems and file formats to spatial analysis and visualization.</p>
  </div>
  <PackageExplorer :packages="packages" :tags="tags" />
</section>
```
