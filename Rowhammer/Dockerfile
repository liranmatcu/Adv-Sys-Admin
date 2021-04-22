FROM alpine:3.10
# FROM alpine:3.5

RUN apk add --no-cache build-base linux-headers

COPY . /opt/rowhammer-test
RUN cd /opt/rowhammer-test && ./make.sh

CMD /opt/rowhammer-test/rowhammer_test