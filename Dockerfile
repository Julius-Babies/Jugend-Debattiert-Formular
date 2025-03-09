FROM node:18-alpine as build
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn run build


FROM node:18-alpine as production
WORKDIR /app

COPY --from=build /app/build build
COPY --from=build /app/package.json package.json

EXPOSE 3000
CMD ["node", "build/index.js"]