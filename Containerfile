FROM denoland/deno:alpine@sha256:46c1b2f84dd10d6aeea5156e74d9f130cf60b5ef699133d7116c28bea7f62ffe

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
