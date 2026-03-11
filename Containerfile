FROM denoland/deno:alpine@sha256:102c91d39e7ef28b2ad28f711c83f8a96eeece65b7d58a7958a01d78e37fe36b

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
