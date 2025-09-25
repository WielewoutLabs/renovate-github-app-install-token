FROM denoland/deno:alpine@sha256:5ecf3a70a541a2ae7ead3b75b62d4a41cd687aea7f2f98aa1b7082fc0a5c73f5

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
