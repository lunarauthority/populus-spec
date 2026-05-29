# Stage 1: Build Hugo site
FROM golang:1.25-alpine AS builder

ARG HUGO_VERSION=0.159.0

RUN apk add --no-cache git
RUN CGO_ENABLED=0 go install github.com/gohugoio/hugo@v${HUGO_VERSION}

WORKDIR /src
COPY . .
RUN hugo --minify --gc


# Stage 2: Runtime
FROM httpd:2.4-alpine
COPY --from=builder /src/public/ /usr/local/apache2/htdocs/
RUN echo "ErrorDocument 404 /404.html" >> /usr/local/apache2/conf/httpd.conf
