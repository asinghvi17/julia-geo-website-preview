using Documenter, DocumenterVitepress

makedocs(;
    modules = Module[],
    authors = "JuliaGeo Contributors",
    repo = "https://github.com/asinghvi17/julia-geo-website-preview",
    sitename = "JuliaGeo",
    format = DocumenterVitepress.MarkdownVitepress(
        repo = "https://github.com/asinghvi17/julia-geo-website-preview",
        devbranch = "master",
        devurl = "dev",
        build_vitepress = haskey(ENV, "CI"),
    ),
    pages = [
        "Home" => "index.md",
        "About" => [
            "Who We Are" => "about/who-we-are.md",
            "Governance" => "about/governance.md",
            "Code of Conduct" => "about/code-of-conduct.md",
        ],
    ],
    warnonly = true,
)

# Copy hero image to VitePress public dir so it's available as a static asset
cp(joinpath(@__DIR__, "src", "juliageo.svg"), joinpath(@__DIR__, "build", ".documenter", "public", "juliageo.svg"); force=true)

DocumenterVitepress.deploydocs(;
    repo = "github.com/asinghvi17/julia-geo-website-preview",
    devbranch = "master",
    push_preview = true,
)
