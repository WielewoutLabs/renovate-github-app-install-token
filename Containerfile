FROM denoland/deno:alpine@sha256:a6cbbd1afd91acdf571f30bbeb441d8985e6985534f5c0d07cb36cd2ca40c28b

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
