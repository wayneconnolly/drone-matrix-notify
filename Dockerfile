FROM alpine
RUN apk update && apk add curl jq coreutils ca-certificates && rm -rf /var/cache/apk/*
ADD script.sh /bin/
RUN chmod +x /bin/script.sh
ENTRYPOINT /bin/script.sh
