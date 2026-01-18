FROM debian:13.2

RUN apt-get update && \
    apt-get install -y build-essential && \
    rm -rf /var/lib/apt/lists/*

COPY fibonacci.deb /tmp/fibonacci.deb

RUN dpkg -i /tmp/fibonaccideb || apt-get install -f -y

WORKDIR /usr/local/bin

CMD ["fibon]
