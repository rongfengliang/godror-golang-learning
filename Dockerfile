FROM  golang:1.15-buster as build
WORKDIR /go/src/app

ENV  GO111MODULE=on
ENV  GOPROXY=https://goproxy.cn
COPY . .
RUN go build

FROM oraclelinux:7-slim
ARG release=19
ARG update=9
RUN  yum -y install oracle-release-el7 && \
     yum -y install oracle-instantclient${release}.${update}-basic && \
     rm -rf /var/cache/yum
COPY --from=build /go/src/app/mygolang-oracle /mygolang-oracle
ENTRYPOINT [ "/mygolang-oracle" ]