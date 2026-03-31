FROM denoland/deno:alpine@sha256:c551369238c5d170700e544bfaf81cba2a398da4b6c0de7d462c8768088b19fe

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
