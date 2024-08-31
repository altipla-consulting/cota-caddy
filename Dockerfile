FROM caddy:2.8.4-builder AS builder

RUN xcaddy build --with github.com/altipla-consulting/caddy-cota-upstreams@v0.1.2

FROM caddy:2.8.4

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
