FROM node:16 as builder

COPY . /repositories

WORKDIR /repositories/gymutm/

FROM nginx:stable-alpine as gymutm

COPY --from=builder /repositories/gymutm/dist /usr/share/nginx/html