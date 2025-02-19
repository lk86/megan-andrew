FROM alpine:latest AS builder

RUN apk --update add ca-certificates bash nano git

COPY --from=plentico/plenti:latest /plenti /usr/local/bin

WORKDIR /home
VOLUME /home

#RUN git clone https://github.com/lk86/megan-andrew
COPY . /home/megan-andrew
WORKDIR /home/megan-andrew
RUN plenti theme add https://github.com/plenti-themes/wedding-lite
RUN plenti theme enable wedding-lite
RUN plenti build .

ENTRYPOINT [ "/bin/bash" ]

FROM builder AS server

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/plenti", "serve", "-b", "-B=false"]
