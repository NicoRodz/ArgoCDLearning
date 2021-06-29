FROM python:3.8-slim-buster

WORKDIR /app
COPY . /app

RUN ls -a
RUN pip install --upgrade pip && pip install -r requirements.txt --no-cache-dir

# RUN useradd appuser && chown -R appuser /app
# USER appuser

ENV FLASK_APP=main

CMD flask run --host=0.0.0.0