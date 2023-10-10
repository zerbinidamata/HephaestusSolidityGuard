FROM node:latest

RUN npm install -g solhint

WORKDIR /app

COPY . .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
