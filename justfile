init:
    ./scripts/setup.sh

serve:
    .venv/bin/zensical serve

build:
    .venv/bin/zensical build

deploy:
    .venv/bin/zensical build --clean

default:
    serve
