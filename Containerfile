FROM denoland/deno:alpine@sha256:9b5cfe963dc3ee97dde39c7b29989709de34b11fc72565ee8fe223a43d08c4a6

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
