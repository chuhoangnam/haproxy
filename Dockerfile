FROM haproxy
RUN apt-get update && apt-get install -y socat && rm -rf /var/lib/apt/lists/*
COPY set-server.sh /bin/set-server
