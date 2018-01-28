# Tiny little proselint image that will run Python SimpleHttpServer from the current directory
#
# Alice Kaerast

FROM python:2.7-alpine3.7

RUN apk add -U --no-cache shadow su-exec 
RUN pip install --no-cache-dir proselint
RUN useradd -ms /bin/sh user

COPY entrypoint.sh /bin/entrypoint.sh

WORKDIR /usr/src/app

EXPOSE 8000

ENTRYPOINT [ "/bin/entrypoint.sh" ]
