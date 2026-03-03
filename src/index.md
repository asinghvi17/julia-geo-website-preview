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
<section class="geo-ecosystem">
  <div class="geo-ecosystem-header">
    <h2>The Ecosystem</h2>
    <p>Packages spanning the full geospatial stack — from coordinate systems and file formats to spatial analysis and visualization.</p>
  </div>

  <div class="geo-category">
    <div class="geo-category-head">
      <h3>Foundation</h3>
      <p>Core packages that enable interoperability across the entire ecosystem</p>
    </div>
    <div class="geo-pkg-grid">
      <a href="https://juliageo.org/GeoInterface.jl/dev/" class="geo-pkg">
        <strong>GeoInterface.jl</strong>
        <span>Traits and protocols for geospatial data based on the Simple Features standard</span>
      </a>
      <a href="https://github.com/JuliaGeo/GeoFormatTypes.jl" class="geo-pkg">
        <strong>GeoFormatTypes.jl</strong>
        <span>Wrapper types for passing and dispatching on geographic formats like WKT and GeoJSON</span>
      </a>
      <a href="https://github.com/JuliaGeo/CommonDataModel.jl" class="geo-pkg">
        <strong>CommonDataModel.jl</strong>
        <span>Common data model for NetCDF, GRIB, Zarr, and GeoTIFF datasets</span>
      </a>
    </div>
  </div>

  <div class="geo-category">
    <div class="geo-category-head">
      <h3>Visualization</h3>
      <p>Map rendering, tiled maps, and geographic plotting</p>
    </div>
    <p class="geo-note">
      See <a href="https://docs.makie.org/stable/">Makie</a> and <a href="https://docs.juliaplots.org/stable/">Plots.jl</a> for general-purpose plotting in Julia.
    </p>
    <div class="geo-pkg-grid">
      <a href="https://github.com/MakieOrg/Tyler.jl" class="geo-pkg">
        <strong>Tyler.jl</strong>
        <span>Interactive tiled web maps with Makie</span>
      </a>
      <a href="https://github.com/MakieOrg/GeoMakie.jl" class="geo-pkg">
        <strong>GeoMakie.jl</strong>
        <span>Geographic projections, coastlines, and map plotting with Makie</span>
      </a>
    </div>
  </div>

  <div class="geo-category">
    <div class="geo-category-head">
      <h3>File I/O — Native Julia</h3>
      <p>Pure Julia implementations for reading and writing geospatial formats</p>
    </div>
    <div class="geo-pkg-grid">
      <a href="https://github.com/JuliaGeo/NCDatasets.jl" class="geo-pkg">
        <strong>NCDatasets.jl</strong>
        <span>NetCDF files — climate, oceanographic, and scientific data</span>
      </a>
      <a href="https://github.com/JuliaGeo/GeoJSON.jl" class="geo-pkg">
        <strong>GeoJSON.jl</strong>
        <span>Read, write, and manipulate GeoJSON data</span>
      </a>
      <a href="https://github.com/JuliaGeo/Shapefile.jl" class="geo-pkg">
        <strong>Shapefile.jl</strong>
        <span>Read and write ESRI Shapefiles</span>
      </a>
      <a href="https://github.com/JuliaGeo/GeoParquet.jl" class="geo-pkg">
        <strong>GeoParquet.jl</strong>
        <span>Geospatial data in Parquet columnar format</span>
      </a>
      <a href="https://github.com/evetion/LazIO.jl" class="geo-pkg">
        <strong>LazIO.jl</strong>
        <span>Read and write LAZ/LAS point cloud files</span>
      </a>
      <a href="https://github.com/JuliaClimate/STAC.jl" class="geo-pkg">
        <strong>STAC.jl</strong>
        <span>SpatioTemporal Asset Catalogs client</span>
      </a>
      <a href="https://github.com/evetion/FlatGeobuf.jl" class="geo-pkg">
        <strong>FlatGeobuf.jl</strong>
        <span>Native FlatGeobuf format support</span>
      </a>
    </div>
  </div>

  <div class="geo-category">
    <div class="geo-category-head">
      <h3>File I/O — C Bindings</h3>
      <p>Julia wrappers around battle-tested C geospatial libraries</p>
    </div>
    <div class="geo-pkg-grid">
      <a href="https://yeesian.com/ArchGDAL.jl" class="geo-pkg">
        <strong>ArchGDAL.jl</strong>
        <span>High-level GDAL interface for raster and vector data</span>
      </a>
      <a href="https://github.com/JuliaGeo/GDAL.jl" class="geo-pkg">
        <strong>GDAL.jl</strong>
        <span>Low-level wrapper for the GDAL library</span>
      </a>
      <a href="https://github.com/JuliaGeo/LibGEOS.jl" class="geo-pkg">
        <strong>LibGEOS.jl</strong>
        <span>GEOS geometry engine — spatial predicates and operations</span>
      </a>
      <a href="https://github.com/JuliaGeo/Proj.jl" class="geo-pkg">
        <strong>Proj.jl</strong>
        <span>Coordinate transformations and cartographic projections via PROJ</span>
      </a>
    </div>
  </div>

  <div class="geo-category">
    <div class="geo-category-head">
      <h3>Datasets</h3>
      <p>Access geographic datasets and tiled map services</p>
    </div>
    <div class="geo-pkg-grid">
      <a href="https://github.com/JuliaGeo/MapTiles.jl" class="geo-pkg">
        <strong>MapTiles.jl</strong>
        <span>Tiled web map utilities and tile coordinates</span>
      </a>
      <a href="https://github.com/JuliaGeo/GADM.jl" class="geo-pkg">
        <strong>GADM.jl</strong>
        <span>Global administrative area boundaries</span>
      </a>
      <a href="https://github.com/JuliaGeo/NaturalEarth.jl" class="geo-pkg">
        <strong>NaturalEarth.jl</strong>
        <span>Natural Earth vector and raster map data</span>
      </a>
      <a href="https://github.com/JuliaGeo/GeoDatasets.jl" class="geo-pkg">
        <strong>GeoDatasets.jl</strong>
        <span>Access to common geographic reference datasets</span>
      </a>
      <a href="https://github.com/evetion/SpaceLiDAR.jl" class="geo-pkg">
        <strong>SpaceLiDAR.jl</strong>
        <span>Satellite altimetry data — ICESat, ICESat-2, GEDI</span>
      </a>
    </div>
  </div>

  <div class="geo-category">
    <div class="geo-category-head">
      <h3>Spatial Analysis</h3>
      <p>Geodetic calculations, terrain analysis, and spatial indexing</p>
    </div>
    <div class="geo-pkg-grid">
      <a href="https://deltares.github.io/Geomorphometry.jl/v0.7.0/" class="geo-pkg">
        <strong>Geomorphometry.jl</strong>
        <span>Terrain operations, cost analysis, and filtering for elevation rasters</span>
      </a>
      <a href="https://github.com/JuliaGeo/Geodesy.jl" class="geo-pkg">
        <strong>Geodesy.jl</strong>
        <span>Coordinate systems (LLA, ECEF, ENU) and geodetic calculations</span>
      </a>
      <a href="https://github.com/asinghvi17/SortTileRecursiveTree.jl" class="geo-pkg">
        <strong>SortTileRecursiveTree.jl</strong>
        <span>STR-tree spatial index for GeoInterface geometries</span>
      </a>
    </div>
  </div>

</section>
```
