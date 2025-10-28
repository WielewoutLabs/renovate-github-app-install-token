FROM denoland/deno:alpine@sha256:a17827a02ca0b771418c9de1664a24caf11e3c1dc5c7a43d7edd65856a127922

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
