FROM denoland/deno:alpine@sha256:6fa741b10c9519dc8305f115356b0c7dc2782a8ec8fa1d14579dd2e9d1385721

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
