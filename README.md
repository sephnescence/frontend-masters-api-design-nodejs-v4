## When running this locally

- It's recommended that you run npm install locally. Docker will ignore .node_modules anyways (as specified in .dockerignore), but it's handy to have installed locally for code completion
- `docker-compose build --force-rm`
- `cp .env.example .env`
- If you're not using the db container specified in docker-compose, then update DATABASE_URL accordingly
- `docker-compose up web` (Can simply do `docker-compose up` at the moment as we only on web and db, and web depends on db)

## Migrating
- From your host machine, run `bash bin/migrate.sh`

## Make a migration
- From your host machine, run `bash bin/make-migration.sh <name>`. You will find any new migrations will appear in `prisma/migrations`.

## Todos
- Get HMR working
- I can't just run `./bin/migrate.sh`. There's probably something missing from my host's bashrc, so nothing to do with this repo
- Add the card information from marvel-snap-api project. The locations of the images may not work properly
- Make an automated task that fetches new card data, inserts it into the database, and fetches new images and hosts them on s3