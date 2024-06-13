FROM ubuntu:jammy

RUN apt-get update ; \
    apt-get upgrade -y ; \
    apt-get install -y --no-install-recommends python3 python3-pip

VOLUME /app/model

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY cogito.py .

ENTRYPOINT ["python3", "cogito.py"]
