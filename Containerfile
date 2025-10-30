FROM denoland/deno:alpine@sha256:b9c7668c78fe393893f00b0fc8ba3d0f2e1bbb8f891a79a963b3b713ab110767

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
