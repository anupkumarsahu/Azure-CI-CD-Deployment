FROM python:3.11.4-slim-bookworm
WORKDIR /app
COPY . /app

RUN apt update -y

RUN app-get update && pip install -r requirements.txt
CMD [ "python3", "app.py" ]