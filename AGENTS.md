# Repository Guidelines

## Project Structure & Module Organization
This repository is a small MkDocs site. Author content lives in `docs/`, with top-level pages such as `docs/index.md` and `docs/about.md`, plus section content under paths like `docs/lab/` and `docs/blog/`. Site configuration is in `mkdocs.yml`, including navigation, theme, plugins, and Markdown extensions. The `justfile` holds common local commands. `site/` contains generated output and should be treated as build artefacts, not hand-edited source.

## Build, Test, and Development Commands
- `just` or `just serve`: starts the local MkDocs dev server with live reload on port `8000`.
- `mkdocs serve --livereload`: direct equivalent of the default `just` task.
- `mkdocs build`: generates the static site into `site/` for a production-style check.
- `just deploy`: runs `mkdocs gh-deploy` to publish to GitHub Pages.

Run commands from the repository root.

## Coding Style & Naming Conventions
Use Markdown for content and YAML for site configuration. Keep indentation to 2 spaces in `mkdocs.yml` and 4 spaces in `justfile` recipes, matching the existing files. Prefer short, descriptive page names in lowercase, using hyphenated or simple path segments such as `docs/lab/markerboard.md`. Write headings in sentence case unless a proper noun requires otherwise. Keep navigation entries in `mkdocs.yml` aligned with actual file paths.

## Testing Guidelines
There is no automated test suite configured today. Validate changes by running `just serve` for local review and `mkdocs build` before opening a PR to catch broken navigation, invalid Markdown, or config errors. When adding new pages, verify the page renders and is linked from `nav` when appropriate.

## Commit & Pull Request Guidelines
Recent history uses short, imperative or descriptive commit subjects such as `Added readme and gitignore` and `Changing markdown compatibility for mkdocs for github`. Keep commits focused and use a clear one-line summary. For pull requests, include:
- a brief description of the content or config change
- linked issues if applicable
- screenshots or preview notes for visible site changes
- confirmation that `mkdocs build` completed successfully

## Contributor Notes
Do not edit files under `site/` manually. Make source changes in `docs/`, `mkdocs.yml`, or `justfile`, then regenerate output through MkDocs.
