FROM denoland/deno:alpine@sha256:bd0ea4a3a33db4df0cb0a1142dae871dc52ec3ee1311c1b0220c7e712fdf8bcc

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
