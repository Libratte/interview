# Этап 1: Сборка приложения
FROM node:18 AS builder

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем оставшиеся файлы
COPY . .

# Собираем проект
RUN npm run build

# Этап 2: Сервер на nginx
FROM nginx:alpine

# Копируем собранный фронт в nginx директорию
COPY --from=builder /app/dist /usr/share/nginx/html

# Копируем дефолтный конфиг nginx (опционально)
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
