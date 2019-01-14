#https://gist.github.com/bastman/5b57ddb3c11942094f8d0a97d461b430
docker volume rm $(docker volume ls -qf dangling=true)
docker volume ls -qf dangling=true | xargs -r docker volume rm

docker network rm $(docker network ls | grep "bridge" | awk '/ / { print $1 }')

docker rm $(docker ps -qa --no-trunc --filter "status=exited")

docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
docker rmi $(docker images | grep "none" | awk '/ / { print $3 }')
