FROM python:3.6-alpine
WORKDIR /repo
RUN apk update && \
    apk add \
        gcc \
        musl-dev \
        postgresql-dev

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install pytest pytest-asyncio
COPY . .