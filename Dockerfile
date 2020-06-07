FROM python:3-alpine

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

# Specify number of workers to the number of CPU cores availible
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app