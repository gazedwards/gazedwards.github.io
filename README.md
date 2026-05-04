# gazedwards.github.io

This is just a space for me to throw stuff and scream into the void. The site is
generated with [Zensical](https://zensical.org/), using native configuration in
`zensical.toml`.

## Local setup

Run the bootstrap step once:

```bash
just init
```

That creates `.venv` and installs the site generator locally.

## Common commands

```bash
just serve
just build
just deploy
```

- `just serve` starts the local preview server on port `8000`
- `just build` generates the static site into `site/`
- `just deploy` performs a clean production build

## Publishing

GitHub Pages publishing is handled through [`.github/workflows/docs.yml`](.github/workflows/docs.yml).
On pushes to `main`, GitHub Actions installs Zensical, builds the site, uploads the
`site/` artefact, and deploys it with GitHub Pages.
