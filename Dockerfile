FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    bash \
    iputils-ping

COPY homework.sh /usr/local/bin/homework.sh
RUN chmod +x /usr/local/bin/homework.sh

WORKDIR /usr/local/bin

EXPOSE 81

CMD ["bash", "-c", "/usr/local/bin/homework.sh && tail -f /dev/null"]
