FROM denoland/deno:alpine@sha256:bfd4b52459d48a24d7e67d0f3fa2931767d22c040a0ee5e8bde531c2a311212e

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
