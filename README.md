# Docker Notes
- https://youtube.com/playlist?list=PLunhqkrRNRhaqt0UfFxxC_oj7jscss2qe&si=xNVMH5ZTB-gKTNDw

# Basic Usage
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
# Writing a Dockerfile
```dockerfile
# run commands at build
RUN <some command>
```
```dockerfile
# Copy files without linking
COPY <source> <destination> 
```
```powershell
# building with docker file
docker build -t my_image .
```
# Sharing Files with container
This creates a new image
```
docker run -it -v "${PWD}:/home" --name humble ros:humble
```

# IDK
Make the Image
```powershell
docker build -t carv_image .
```
Make the container
```powershell
docker run -it `
    --user carv `
    --network=host --ipc=host `
    -v "$($PWD.Path):/home/carv/Desktop/share" `
    --name carv_container `
    carv_image
```
