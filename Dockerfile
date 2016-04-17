FROM alpine
MAINTAINER ChesterTseng (cwyark@gmail.com)

RUN apk update && \
    apk add --no-cache python openssl && \
    wget https://bootstrap.pypa.io/get-pip.py -O- | python  

RUN pip install flask gunicorn

EXPOSE 80
