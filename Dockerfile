FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip

WORKDIR /app

COPY app/ /app

RUN pip3 install --no-cache-dir -r /app/requirements.txt

CMD ["python3", "/app/backup.py"]
