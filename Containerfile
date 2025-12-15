FROM denoland/deno:alpine@sha256:be44033e760cdd9343499ac8e597a312e4c74e4cda11e74c59307af9fc980cf9

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
