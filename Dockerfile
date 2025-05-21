# Build stage
FROM node:18-alpine AS builder

WORKDIR /app

# copy package.json & lock file
COPY package.json package-lock.json* ./

# install dependencies
RUN npm install

# copy source code
COPY . .

# build nuxt app (SSR)
RUN npm run build

# Production stage
FROM node:18-alpine

WORKDIR /app

# copy build output จาก builder stage
COPY --from=builder /app/.output ./

# expose port ที่ nuxt รัน (default 3000)
EXPOSE 3000

# รัน nuxt server (SSR)
CMD ["node", ".output/server/index.mjs"]
