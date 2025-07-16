FROM denoland/deno:alpine@sha256:67a912a84fee096e71b583524aec3a01add461eebccf41a8f190947b6e3c784d

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
