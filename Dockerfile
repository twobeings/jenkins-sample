FROM alibaba-cloud-linux-3-registry.cn-hangzhou.cr.aliyuncs.com/alinux3/golang:1.19.4

ADD . /go/src/app

WORKDIR /go/src/app

RUN  go mod init

RUN  go build -v -o /go/src/app/jenkins-app

CMD ["./jenkins-app"]
