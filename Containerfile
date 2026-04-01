FROM denoland/deno:alpine@sha256:bfe6fc22587a359956a275f1e06f1f43bd3ef1c2bf6f40982d44fee31e6bf9bb

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
