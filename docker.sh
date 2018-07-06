#构建镜像
docker build -t="wulinyun/docker-jar-demo" .   
#查看本地镜像
docker images
#标记为私有仓库镜像
docker tag wulinyun/docker-jar-demo harbor.landaudev.com/demo/docker-jar-demo:latest
#推送到私有镜像仓库当中
docker push harbor.landaudev.com/demo/docker-jar-demo:latest
#部署到PCF
cf push docker-jar-demo --docker-image harbor.landaudev.com/demo/docker-jar-demo:latest
#删除tag标记
#docker rmi -f harbor.landaudev.com/demo/docker-jar-demo:latest
#后台运行本地docker镜像
#sudo docker run   -d -p 8080:8080 wulinyun/docker-jar-demo