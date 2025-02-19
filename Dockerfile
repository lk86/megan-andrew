FROM alpine:latest

RUN apk --update add ca-certificates bash nano

COPY --from=plentico/plenti:latest /plenti /usr/local/bin

WORKDIR /home
# RUN plenti new site wedding --theme=https://github.com/plenti-themes/wedding-lite
VOLUME /home
ENTRYPOINT ["/bin/bash"]
