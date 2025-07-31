FROM denoland/deno:alpine@sha256:b88e685a22139f8114ed381412067f0162423d69ed814bc4974d75a5f1675893

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
