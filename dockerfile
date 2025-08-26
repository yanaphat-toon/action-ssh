FROM ubuntu:22.04

RUN apt-get update && apt-get install -y openssh-client

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
