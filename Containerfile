FROM denoland/deno:alpine@sha256:b64881926dcb3ba183b8767a4542aac69343dbc97008c22a60208cf07e4a21cc

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
