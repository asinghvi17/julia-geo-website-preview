# Who We Are

The [JuliaGeo](https://github.com/JuliaGeo) GitHub organization serves as a focal point for developing and maintaining the next generation of tooling for geospatial analysis. It aims to leverage the intuitive syntax and high-performance of the [Julia language](https://julialang.org/) to provide robust, efficient, and easy-to-use tools for working with geographic data.

## Our Mission

JuliaGeo is a community of researchers, engineers and others interested in working with spatial data in Julia. We have various needs and make different contributions to the ecosystem, but collectively we are committed to:

- Developing documented and accessible tools for spatial geometry and raster data manipulation
- Providing a coherent workflow linking these tools via adherence to shared interfaces and community standards from both within and outside JuliaGeo
- Maintaining software for reading and writing spatial data formats, especially focussed on big data and large workloads
- Communicating spatial data workflows from JuliaGeo and the broader geospatial ecosystem, and making them accessible to the wider scientific and spatial data community

## Get Involved

JuliaGeo fosters a collaborative environment for creating a comprehensive geospatial toolkit within the Julia ecosystem. Communication is mostly done on:

1. [Julia Geo Discourse](https://discourse.julialang.org/c/domain/geo) for general questions on the JuliaGeo ecosystem
2. [Slack #geo](https://julialang.org/slack/) for more short-lived interaction

## Members

```@raw html
<script setup>
import { VPTeamMembers } from 'vitepress/theme'

const members = [
  { avatar: "https://github.com/00krishna.png", name: "00krishna", links: [{ icon: "github", link: "https://github.com/00krishna" }] },
  { avatar: "https://github.com/alex-s-gardner.png", name: "alex-s-gardner", links: [{ icon: "github", link: "https://github.com/alex-s-gardner" }] },
  { avatar: "https://github.com/Alexander-Barth.png", name: "Alexander-Barth", links: [{ icon: "github", link: "https://github.com/Alexander-Barth" }] },
  { avatar: "https://github.com/andyferris.png", name: "andyferris", links: [{ icon: "github", link: "https://github.com/andyferris" }] },
  { avatar: "https://github.com/anowacki.png", name: "anowacki", links: [{ icon: "github", link: "https://github.com/anowacki" }] },
  { avatar: "https://github.com/asinghvi17.png", name: "asinghvi17", links: [{ icon: "github", link: "https://github.com/asinghvi17" }] },
  { avatar: "https://github.com/c42f.png", name: "c42f", links: [{ icon: "github", link: "https://github.com/c42f" }] },
  { avatar: "https://github.com/evetion.png", name: "evetion", links: [{ icon: "github", link: "https://github.com/evetion" }] },
  { avatar: "https://github.com/felixcremer.png", name: "felixcremer", links: [{ icon: "github", link: "https://github.com/felixcremer" }] },
  { avatar: "https://github.com/garborg.png", name: "garborg", links: [{ icon: "github", link: "https://github.com/garborg" }] },
  { avatar: "https://github.com/haakon-e.png", name: "haakon-e", links: [{ icon: "github", link: "https://github.com/haakon-e" }] },
  { avatar: "https://github.com/joshday.png", name: "joshday", links: [{ icon: "github", link: "https://github.com/joshday" }] },
  { avatar: "https://github.com/juliohm.png", name: "juliohm", links: [{ icon: "github", link: "https://github.com/juliohm" }] },
  { avatar: "https://github.com/jw3126.png", name: "jw3126", links: [{ icon: "github", link: "https://github.com/jw3126" }] },
  { avatar: "https://github.com/Keno.png", name: "Keno", links: [{ icon: "github", link: "https://github.com/Keno" }] },
  { avatar: "https://github.com/lazarusA.png", name: "lazarusA", links: [{ icon: "github", link: "https://github.com/lazarusA" }] },
  { avatar: "https://github.com/lupemba.png", name: "lupemba", links: [{ icon: "github", link: "https://github.com/lupemba" }] },
  { avatar: "https://github.com/mauro3.png", name: "mauro3", links: [{ icon: "github", link: "https://github.com/mauro3" }] },
  { avatar: "https://github.com/MaximeBouton.png", name: "MaximeBouton", links: [{ icon: "github", link: "https://github.com/MaximeBouton" }] },
  { avatar: "https://github.com/meggart.png", name: "meggart", links: [{ icon: "github", link: "https://github.com/meggart" }] },
  { avatar: "https://github.com/milankl.png", name: "milankl", links: [{ icon: "github", link: "https://github.com/milankl" }] },
  { avatar: "https://github.com/rafaqz.png", name: "rafaqz", links: [{ icon: "github", link: "https://github.com/rafaqz" }] },
  { avatar: "https://github.com/SimonDanisch.png", name: "SimonDanisch", links: [{ icon: "github", link: "https://github.com/SimonDanisch" }] },
  { avatar: "https://github.com/skygering.png", name: "skygering", links: [{ icon: "github", link: "https://github.com/skygering" }] },
  { avatar: "https://github.com/Sov-trotter.png", name: "Sov-trotter", links: [{ icon: "github", link: "https://github.com/Sov-trotter" }] },
  { avatar: "https://github.com/tcarion.png", name: "tcarion", links: [{ icon: "github", link: "https://github.com/tcarion" }] },
  { avatar: "https://github.com/tedsteiner.png", name: "tedsteiner", links: [{ icon: "github", link: "https://github.com/tedsteiner" }] },
  { avatar: "https://github.com/TheCedarPrince.png", name: "TheCedarPrince", links: [{ icon: "github", link: "https://github.com/TheCedarPrince" }] },
  { avatar: "https://github.com/tiemvanderdeure.png", name: "tiemvanderdeure", links: [{ icon: "github", link: "https://github.com/tiemvanderdeure" }] },
  { avatar: "https://github.com/visr.png", name: "visr", links: [{ icon: "github", link: "https://github.com/visr" }] },
]
</script>
```

```@raw html
<div class="members-grid">
<VPTeamMembers size="small" :members="members" />
</div>

<style>
.members-grid .VPTeamMembers.small .container {
  grid-template-columns: repeat(3, 1fr) !important;
  max-width: 100%;
}
.members-grid .VPTeamMembers.small .container .profile .data .avatar {
  width: 48px;
  height: 48px;
}
@media (max-width: 768px) {
  .members-grid .VPTeamMembers.small .container {
    grid-template-columns: repeat(2, 1fr) !important;
  }
}
</style>
```
