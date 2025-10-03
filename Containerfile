FROM denoland/deno:alpine@sha256:02906830d9ae490e12001624fd4fcb3dbf949cfde89ce5ee021259836cde88c8

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
