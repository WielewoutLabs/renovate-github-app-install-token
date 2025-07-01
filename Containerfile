FROM denoland/deno:alpine@sha256:fcf215ca621c2834157dcb8a8c8c48b64d273b542b4fc8baee1b5c6de50b326c

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
