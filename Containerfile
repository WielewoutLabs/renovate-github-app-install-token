FROM denoland/deno:alpine@sha256:7ab8890155ef7e55633aeb41cbb11fde90ba7dd9a01be1c415186ef3f03d7622

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
