FROM denoland/deno:alpine@sha256:f36b916d304948316d9af285dba7949be6e17ed56af8b90b389295bcf4326cba

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
