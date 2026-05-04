# Repository Guidelines

## Project Structure & Module Organization
This repository is a small documentation-style site. Author content lives in `docs/`, with top-level pages such as `docs/index.md` and `docs/about.md`, plus section content under paths like `docs/lab/` and `docs/blog/`. Site configuration lives in `zensical.toml`. The `justfile` holds common local commands, and `scripts/setup.sh` bootstraps the local environment. `site/` contains generated output and should be treated as build artefacts, not hand-edited source.

## Build, Test, and Development Commands
- `just init`: creates `.venv` and installs Zensical locally.
- `just` or `just serve`: starts the local Zensical preview server on port `8000`.
- `just build`: generates the static site into `site/` for a production-style check.
- `just deploy`: currently performs the production build step used before publishing.

Run commands from the repository root.

## Coding Style & Naming Conventions
Use Markdown for content and TOML for site configuration. Keep indentation to 2 spaces in nav arrays within `zensical.toml` and 4 spaces in `justfile` recipes, matching the existing files. Prefer short, descriptive page names in lowercase, using hyphenated or simple path segments such as `docs/lab/markerboard.md`. Write headings in sentence case unless a proper noun requires otherwise. Keep navigation entries in `zensical.toml` aligned with actual file paths.

## Testing Guidelines
There is no automated test suite configured today. Validate changes by running `just serve` for local review and `just build` before opening a PR to catch broken navigation, invalid Markdown, or config errors. When adding new pages, verify the page renders and is linked from `nav` when appropriate.

## Commit & Pull Request Guidelines
Recent history uses short, imperative or descriptive commit subjects such as `Added readme and gitignore` and `Changing markdown compatibility for mkdocs for github`. Keep commits focused and use a clear one-line summary. For pull requests, include:
- a brief description of the content or config change
- linked issues if applicable
- screenshots or preview notes for visible site changes
- confirmation that `just build` completed successfully

## Contributor Notes
Do not edit files under `site/` manually. Make source changes in `docs/`, `zensical.toml`, `justfile`, or `scripts/setup.sh`, then regenerate output through Zensical.
