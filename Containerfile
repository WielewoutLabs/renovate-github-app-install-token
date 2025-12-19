FROM denoland/deno:alpine@sha256:3b16eadd3696a6f5aca82a1c5dbf2fe82776fe59a3f6e3a4f9074e01f61d7285

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
