FROM denoland/deno:alpine@sha256:01a038322c02ed568c96840c30a9e2bd7bc2ed80d7420b9a1ba7d91dcd93aec5

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
