FROM ubuntu:latest
RUN apt update -y && apt upgrade -y

FROM python:latest

LABEL Maintainer="canadrian72"

WORKDIR /app

RUN pip3 install flask requests flask-cors

COPY src/*.py ./

EXPOSE <Port for API>
CMD [ "python", "-u", "<.py with flask app"]
