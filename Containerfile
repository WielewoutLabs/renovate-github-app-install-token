FROM denoland/deno:alpine@sha256:8fe8a6ca3b5111639fa486c5dc2a5f6301f92565c5df000104371a40108c6d3d

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
