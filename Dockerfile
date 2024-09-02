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

# Запускаем скрипт
CMD ["python", "бот_посвят_беседа.py"]
