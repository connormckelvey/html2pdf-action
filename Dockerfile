FROM golang:1.20-bullseye as build

WORKDIR /usr/src/app
COPY . .
RUN make

FROM debian:bullseye

RUN apt update && apt -qq install -y wkhtmltopdf

COPY --from=build /usr/src/app/dist/html2pdf /usr/local/bin/html2pdf
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
