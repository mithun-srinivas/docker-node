# Docker

## What is container ?
A way to package app with all the dependency and configurations.
- Containers are portable so we can share
- Makes development and deployment process more effective.

### Where do containers live ?
- Container repository.
- Private repository.
- Public repo for docker: dockerhub.

### Problems container solved.

- No need to do setup everytime. Containers have own isolated environment packages with all needed configurations.
- One docker command to install the app.
- Removes OS Dependency and errors while handling dependencies.
- Run same app with multiple versions.

### How containers help in deployment.

- All the instructions will be written in a file / artifact and operation team will install everything in OS. But the problem here is every OS ha its own installation process and problems.
- With containers we create images with configuration pre-written and no extra configuration needed on server or on OS. Just install docker and run it.

## What is a container ?
- They are layer of images, mostly linux [ Alpine ] base image because they are small size.
- On top of base image we will have application image where our applications are rested.

### Image v/s container

- Image is the actual package or artifact that is portable.
- Container gives an env to run the image.

```docker
docker ps // list all running images
```

## Docker v/s Virtualization

- Docker on OS level.
- Docker has different level of abstraction.

OS has two layers:

1. OS Kernel: Hardware layer
2. Application: Runs on kernel

Docker and VM are ways of virtualization

- Docker virtualizes the application layer. It uses the kernel of the host. Size is much smaller. Docker is lightweight and speed. The same OS host images are  [ Linux docker image is not compatible with windows docker ].
- VM virtualizes the complete OS both application and introduces its own kernel. Size is huge. VMs are slow. The same VM can run on any OS.

## Basic commands

### Image v/s container

- Container is a running environment for an image. It has port binded to it. It has virtual abstracted file system.
- Each image will have its own tag representing its versions. 

### Commands

- `docker pull` : Get images
- `docker images` : List all docker images
- `docker run <image>`: Create container in ready mode
- `docker run -p<HOST_PORT>:<CONTAINER_PORT> <image>`: Create container with port binding
- `sudo docker run --name redis-latest redis`: Create container with custom name
- `docker run -d <image>`: Create container in detach mode
- `docker ps`: List running docker containers
- `docker ps -a`: List all [ running / not running ] docker containers
- `docker stop <container-id>` Stops the container
- `docker start <container-id>` Restart the container
- `docker logs <container-id>`: Look docker logs
- `docker logs <container-name>`: Look docker logs
- `sudo docker exec -it <container_id> /bin/bash`: Open container terminal.
- `exit`:come out of container terminal.
- `docker rmi <image-id>:<version>`: Remove docker image

### Container port v/s HOST port

- Our host has many ports and our container also has multiple images running on.
- We need to bind the container port to host port as container is virtual and need support of physical host.
- So using this binding port the applications get redirects to the container.
- Using this port binding we can use different versions of same container.

## Workflow with Docker

