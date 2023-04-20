# Официальный образ Python
FROM python:3.8

# Установка зависимостей
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN pip install gunicorn
# Копирование приложения в контейнер
COPY app.py .
COPY templates templates

# Открытие порта, на котором будет запущено приложение
EXPOSE 5000

# Запуск приложения при старте контейнера
#CMD [ "python", "app.py" ]
CMD ["gunicorn",  "-b",  "0.0.0.0:5000", "app:app"]
