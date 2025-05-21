# Build stage
FROM node:18-alpine AS builder

WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json* ./ 
RUN npm install

# Copy source code
COPY . .

# Build production
RUN npm run build

# Production stage
FROM nginx:alpine

# Copy built files จาก builder stage
COPY --from=builder /app/.output/public /usr/share/nginx/html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
