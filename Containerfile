FROM denoland/deno:alpine@sha256:560c09b53106f2a9f45100bb105a5eb87ddb7d547f275caba7f37ab9b574a2fa

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
