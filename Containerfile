FROM denoland/deno:alpine@sha256:26dafd9d708e1d9b3f66f27564ce756074ff26889f03ba0b40f60a494a429825

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
