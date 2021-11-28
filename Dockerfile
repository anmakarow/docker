# скачиваем необходимый образ
FROM node:17-alpine3.12

# задаем рабочую директорию
WORKDIR /usr/app

# копируем код внутрь контейнера
COPY main.js .

# устанавливаем необходимые пакеты
RUN npm install express process

# задаем команду, которая будет выполняться при запуске контейнера
CMD ["node", "main.js"]