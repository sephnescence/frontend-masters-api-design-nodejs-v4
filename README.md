## When running this locally

- It's recommended that you run npm install locally. Docker will ignore .node_modules anyways (as specified in .dockerignore), but it's handy to have installed locally for code completion
- `docker-compose build --force-rm`
- `cp .env.example .env`
- If you're not using the db container specified in docker-compose, then update DATABASE_URL accordingly
- `docker-compose up web` (Can simply do `docker-compose up` at the moment as we only on web and db, and web depends on db)

## Migrating
- From your host machine, run `bash bin/migrate.sh`

## Todos

- Get HMR working
- I can't just run `./bin/migrate.sh`. There's probably something missing from my host's bashrc, so nothing to do with this repo