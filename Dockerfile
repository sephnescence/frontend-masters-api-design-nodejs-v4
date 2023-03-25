FROM node:latest as base

WORKDIR /src
COPY package*.json /
EXPOSE 3003

# FROM base as production # BTTODO - If I care to do this later

FROM base as dev
ENV NODE_ENV=development
RUN npm install -g typescript ts-node && npm install
COPY . /
CMD ["ts-node", "index.ts"]