FROM denoland/deno:alpine@sha256:3c5d95d6c5d7704b650a6667121780dc7a3e0ae59b1933468154157737929a31

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
