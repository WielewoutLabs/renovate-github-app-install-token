FROM denoland/deno:alpine@sha256:ecf2608e36d6bef2598c9d2e9b016e617334af5c66b31704834d5f7fe00e0832

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
