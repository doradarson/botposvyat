# Используем базовый образ Python
FROM python:3.8

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл с ботом в контейнер
COPY bot_text_pos.py /app

# Устанавливаем зависимости (telebot)
RUN pip install pyTelegramBotAPI

# Устанавливаем переменные окружения (если нужно)
# ENV TOKEN=ваш_токен

EXPOSE 8080
# Запускаем скрипт
CMD ["python", "bot_text_pos.py"]
