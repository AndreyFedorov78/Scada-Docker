FROM python:3.10-alpine3.16

COPY reqirements.txt /temp/reqirements.txt
COPY service /service
WORKDIR /service
EXPOSE 8000

RUN pip install -r /temp/reqirements.txt
RUN adduser --disabled-password service-user
RUN chmod a+w /service

USER service-user