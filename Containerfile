FROM denoland/deno:alpine@sha256:c4351d139e7dcb62371b3956ef89e4f3c70d765b1e853225eaca80022b3272cc

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
