# First step: Build a temporary node container
FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
# This will create the directory '/app'build'
RUN npm run build

# Second step: Create the nginx container
FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html