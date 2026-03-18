FROM denoland/deno:alpine@sha256:09ebd2676e8c6e7149e4401b242d2011936cc61f6fdd6482e18816a914e10f64

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
