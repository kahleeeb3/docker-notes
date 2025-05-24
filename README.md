# Docker Notes
https://youtube.com/playlist?list=PLunhqkrRNRhaqt0UfFxxC_oj7jscss2qe&si=xNVMH5ZTB-gKTNDw
## Pull the docker container
```
docker pull ros:humble
```
## Run the docker container
```
docker run -it --name humble ros:humble
```
## Quit the container with `ctrl+D` OR
```
exit
```
Or kill it with
```
docker stop humble
```
## Start the container
```
docker start -i humble
```
## Open a second terminal
```
docker exec -it humble /bin/bash
```
## List the containers running
```
docker ps
```
or you can use `docker container ls`
## List all containers
```
docker ps -a
```
## Remove all containers
```
docker container prune
```
