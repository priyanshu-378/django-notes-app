FROM python:3.9

WORKDIR /app/backend

RUN apt update \
    && apt install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

COPY . /app/backend

RUN pip install mysqlclient \
    && pip install --no-cache-dir  -r requirements.txt

CMD ["./entrypoint.sh"]
