FROM denoland/deno:alpine@sha256:b352e01d7dfb6d5d3ca83413ce5a8149f13b1a0041457ce2ae5856e100d00ff8

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
