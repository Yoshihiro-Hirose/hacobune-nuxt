FROM node:12
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn generate

FROM nginx
COPY --from=0 /app/dist /usr/share/nginx/html
