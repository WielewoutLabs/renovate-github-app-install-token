FROM denoland/deno:alpine@sha256:a49d8fc2e5abf594509a70b008dea4c671ccf54d7c3a978602bb6ee4ca04dcf3

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
