# FROM python:3.8-slim-buster
FROM python:3.8-alpine


ENV PYTHONUNBUFFERED=1

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

# WORKDIR /app
WORKDIR /django


COPY requirments.txt requirments.text

RUN pip install -r requirments.text

# COPY . .

# CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]