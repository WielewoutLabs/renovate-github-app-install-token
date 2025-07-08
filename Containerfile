FROM denoland/deno:alpine@sha256:17fd3117ef30beb2209f7e7761a8aec2570505ac700df634921783098ce6097b

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
