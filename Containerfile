FROM denoland/deno:alpine@sha256:904ba915c0b231c88f1309049ecfc1d72fc877afd7a44244f48503b15bad1720

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
