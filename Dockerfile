FROM node:18.12.1 as builder

COPY . /repositories

WORKDIR /repositories/gymutm/

FROM nginx:stable-alpine as gymutm

COPY --from=builder /repositories/gymutm/dist /usr/share/nginx/html