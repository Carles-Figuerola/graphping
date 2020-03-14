FROM python:3

RUN apt-get update && apt-get install fping python-daemon -y && apt-get clean

COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt

COPY graphping /

ENTRYPOINT [ "/usr/bin/python", "/graphping" ]
