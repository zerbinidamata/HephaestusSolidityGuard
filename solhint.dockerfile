FROM node:latest

RUN npm install -g solhint

WORKDIR /github/workspace

COPY entrypoint.sh /entrypoint.sh

COPY . .

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
