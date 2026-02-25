FROM denoland/deno:alpine@sha256:72c9bc2bda3cb57e9e907bd7d285d7afa95a04be2f15fc606bc4e8c389358af2

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
