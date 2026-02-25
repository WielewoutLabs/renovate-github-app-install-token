FROM denoland/deno:alpine@sha256:b85756a0b0d2162dc70a2c5173261e717c776d42eb4ac939ff94367c8473fa5e

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
