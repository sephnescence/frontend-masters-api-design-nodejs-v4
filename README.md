## When running this locally

- It's recommended that you run npm install locally. Docker will ignore .node_modules anyways (as specified in .dockerignore), but it's handy to have installed locally for code completion
- `docker-compose build --force-rm`
- `cp .env.example .env`
- If you're not using the db container specified in docker-compose, then update DATABASE_URL accordingly
- `docker-compose up web` (Can simply do `docker-compose up` if you don't need postgres)


## Todos

- Get HMR working