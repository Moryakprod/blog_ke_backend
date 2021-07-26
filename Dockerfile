# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster AS basic

WORKDIR /blog_ke_backend

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

FROM basic AS development
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]