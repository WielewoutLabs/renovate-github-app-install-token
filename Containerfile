FROM denoland/deno:alpine@sha256:d59199e51eabbdd41620fed54d6ba576ddce59f072300165193a87a303333106

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
