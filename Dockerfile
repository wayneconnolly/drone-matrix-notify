FROM alpine
RUN apk update && apk add --no-cache bash && apk add sed curl jq coreutils ca-certificates && rm -rf /var/cache/apk/*
ADD script.sh /bin/
ADD matrix.sh /bin/
RUN chmod +x /bin/script.sh
RUN chmod +x /bin/matrix.sh
ENTRYPOINT /bin/script.sh
