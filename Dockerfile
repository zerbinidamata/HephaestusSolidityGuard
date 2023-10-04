FROM ubuntu:latest

RUN apt-get update && apt-get install -y nodejs npm truffle
RUN npm install -g slither-analyzer
RUN npm install -g solhint

WORKDIR /workspace

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
