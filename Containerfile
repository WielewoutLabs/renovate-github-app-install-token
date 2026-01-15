FROM denoland/deno:alpine@sha256:774694967decb96ff808f9554c3c3ae4c1ea1d806e17e730f68fa6b2bbf3cc66

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
