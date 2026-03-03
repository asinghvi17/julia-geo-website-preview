# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the JuliaGeo organization website (juliageo.org) - a static site built with Jekyll and hosted on GitHub Pages. It serves as a documentation hub for Julia's geospatial ecosystem.

## Development

**Local preview (optional):**
```bash
bundle exec jekyll serve
```

**Deployment:** Push to `master` branch. GitHub Pages automatically builds and deploys.

## Architecture

```
├── README.md           # Main site content (rendered as index.html)
├── _config.yml         # Jekyll configuration (theme, title, description)
├── _layouts/
│   └── default.html    # HTML template using Liquid templating
└── img/
    └── juliageo.svg    # Logo
```

Content lives entirely in README.md. The `_layouts/default.html` template wraps it with the jekyll-theme-cayman styling and header/footer.

## Content Structure

README.md sections:
- **Get involved** - Communication channels (Discourse, Slack)
- **Talks** - Conference presentations
- **GitHub organizations** - Scope of JuliaGeo vs related orgs
- **Packages** - Organized into: Wrappers for external libraries, Native Julia libraries, Other Projects
