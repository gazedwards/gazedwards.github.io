init:
    ./scripts/setup.sh

serve:
    .venv/bin/mkdocs serve --livereload

build:
    .venv/bin/mkdocs build

deploy:
    .venv/bin/mkdocs gh-deploy

default:
    serve
