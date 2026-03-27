FROM denoland/deno:alpine@sha256:ed5ecbeeff1bf6d4e017b03f7129791c32bf6ae7e68a8fa9593383b4f45e1c85

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
