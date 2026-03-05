using Documenter, DocumenterVitepress

makedocs(;
    modules = Module[],
    authors = "JuliaGeo Contributors",
    repo = "https://github.com/JuliaGeo/juliageo.github.io",
    sitename = "JuliaGeo",
    format = DocumenterVitepress.MarkdownVitepress(
        repo = "https://github.com/JuliaGeo/juliageo.github.io",
        devbranch = "master",
        devurl = "dev",
        deploy_url = "juliageo.org",
        build_vitepress = false,
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

deploydocs(;
    repo = "github.com/asinghvi17/julia-geo-website-preview",
    devbranch = "master",
    push_preview = true,
)
