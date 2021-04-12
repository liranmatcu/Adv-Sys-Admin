FROM alpine

ENV TERM xterm

ENV USER_UID 1000
ENV USER_NAME student
ENV USER_HOME /home/student

RUN apk update && \
    apk upgrade && \
    apk add --no-cache s-nail && \
    ln -s /usr/bin/mail /usr/bin/mailx && \
    adduser -D -u $USER_UID $USER_NAME && \
    rm -rf /var/cache/apk/*

CMD ["/usr/bin/mailx"]