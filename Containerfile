FROM denoland/deno:alpine@sha256:7cf6038233d427ea305fffdf95111b204dd3dd787463e8ccbcf026b15430fc30

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
