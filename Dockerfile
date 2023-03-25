FROM node:latest as base

WORKDIR /src
COPY package*.json /
EXPOSE 3003

# FROM base as production # BTTODO - If I care to do this later

FROM base as dev
ENV NODE_ENV=development
RUN npm install
COPY . /
CMD ["node", "index.js"]