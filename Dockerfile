FROM alpine
RUN apk update && apk add curl jq coreutils ca-certificates && rm -rf /var/cache/apk/*
ADD script.sh /bin/
ADD matrix.sh /bin/
RUN chmod +x /bin/script.sh
RUN chmod +x /bin/matrix.sh
ENTRYPOINT /bin/script.sh
