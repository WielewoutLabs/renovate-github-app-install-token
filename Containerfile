FROM denoland/deno:alpine@sha256:1687658cd367f71a7f83c6e941257204da0c3412b98a970b1ff031d3605408f4

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
