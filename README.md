# nginx-proxy

基于nginx的代理程序，使用tcp进行代理。

基于swarm的使用

docker run -d -p 4002:80 -e HOST=mysq_test -e PORT=3306 --network swarm-net fine/nginx-proxy

1.HOST：mysq_test为要代理的容器，必须已经加入了swarm-net网络

2.PORT：3306目标端口号

3.4002为暴露的端口号

基于link的使用

docker run -d -p 4002:80 -e HOST=es -e PORT=3306 --link es:elasticsearch swarm-net fine/nginx-proxy
