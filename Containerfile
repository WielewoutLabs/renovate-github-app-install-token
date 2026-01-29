FROM denoland/deno:alpine@sha256:454b4d685f9e8f35e41f838aa5ca297769f4ee18ee0f4814329b51af2c4c9e7c

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
