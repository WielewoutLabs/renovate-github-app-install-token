FROM denoland/deno:alpine@sha256:bec860a253508d9813bb622be2359fd7bb3f72ff9a85ed6f8ccd46ab8522bcf6

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
