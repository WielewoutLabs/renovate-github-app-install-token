FROM denoland/deno:alpine@sha256:8f58f398552de8ee5028b69bd92370d0703bcec220adcfc68a07669f1be241f3

WORKDIR /app
COPY . /app/

RUN deno install

ENTRYPOINT [ "deno", "run", "--allow-env", "--allow-net", "--allow-read", "--allow-write", "main.js" ]
