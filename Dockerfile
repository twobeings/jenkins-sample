FROM anolis-registry.cn-zhangjiakou.cr.aliyuncs.com/openanolis/golang

ADD . /go/src/app

WORKDIR /go/src/app

RUN  go build -v -o /go/src/app/jenkins-app

CMD ["./jenkins-app"]
