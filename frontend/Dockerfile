FROM node:18-alpine AS build

WORKDIR /app

# The frontend depends on the repo root via "file:..", so this image must be
# built with the repository root as the Docker build context.
COPY package*.json ./
COPY frontend/package*.json ./frontend/
RUN npm ci --prefix frontend

COPY frontend ./frontend

WORKDIR /app/frontend
ENV GENERATE_SOURCEMAP=false
RUN npx react-scripts build

FROM nginx:alpine

COPY frontend/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/frontend/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
