FROM python:3.12
LABEL maintainer="marksagalongos@gmail.com"
ENV PYTHONUNBUFFERED=1

WORKDIR /test-automation

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update \
    && apt install gettext netcat-traditional bash libgdal-dev libproj-dev proj-bin python3-sphinx libopenal1 libgl1 gcc -y
COPY requirements.txt /test-automation/requirements.txt
RUN pip install -r /test-automation/requirements.txt

ENTRYPOINT [ "python"]