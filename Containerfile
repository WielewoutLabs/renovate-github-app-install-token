FROM denoland/deno:alpine@sha256:95296c50c47e3f63739e928980b968e273636c52e7f599c67ee831570b17deeb

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
