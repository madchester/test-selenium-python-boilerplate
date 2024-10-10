FROM python:3.12
LABEL maintainer="marksagalongos@gmail.com"
ENV PYTHONUNBUFFERED=1

WORKDIR /test-automation

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
COPY requirements.txt requirements.txt
RUN pip install  --no-cache-dir -r requirements.txt
COPY . .
ENTRYPOINT ["python"]