# Usar imagen oficial de Bun
FROM oven/bun:1 AS base
WORKDIR /app

# Etapa de dependencias
FROM base AS deps
COPY package.json bun.lock ./
RUN bun install --frozen-lockfile

# Etapa de construcción
FROM base AS builder
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN bun run build

# Etapa de producción
FROM base AS runner
WORKDIR /app
ENV NODE_ENV=production

# Copiar archivos necesarios del build
COPY --from=builder /app/build ./build
COPY --from=builder /app/node_modules ./node_modules
COPY package.json ./

# Exponer el puerto (por defecto 3000 para adapter-node)
EXPOSE 3000
ENV PORT=3000
ENV ORIGIN=http://localhost:3000

# Iniciar la aplicación
CMD ["bun", "run", "build/index.js"]