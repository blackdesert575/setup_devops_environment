# Containers

# container

## Guides/Tips/...etc

* tools
    * nsenter - run program in different namespaces
        * [man7/nsenter ](https://www.man7.org/linux/man-pages/man1/nsenter.1.html)
* containerd
    * [containerd.io](https://containerd.io/)
* ctop
    * [github.com/bcicen/ctop](https://github.com/bcicen/ctop)
* [Visual Studio Code Dev Containers extension](https://code.visualstudio.com/docs/devcontainers/containers)
* container
* [containers](https://github.com/containers/)
* [LXC](https://linuxcontainers.org/)
*  Docker
    * [Compose and Docker compatibility matrix](https://docs.docker.com/compose/compose-file/compose-file-v3/)
    * [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
    * [How to install and configure Docker on Arch-based Linux Distributions(Manjaro) ?](https://www.geeksforgeeks.org/how-to-install-and-configure-docker-on-arch-based-linux-distributionsmanjaro/)
    * [Run the Docker daemon as a non-root user (Rootless mode)](https://docs.docker.com/engine/security/rootless/)
    * [JavaScript samples](https://docs.docker.com/samples/javascript/)
    * [NGINX / Node.js / Redis](https://github.com/docker/awesome-compose/tree/master/nginx-nodejs-redis)
    * [Dockerizing a Node.js web app](https://nodejs.org/en/docs/guides/nodejs-docker-webapp)
    * [Docker Engine overview](https://docs.docker.com/engine/)
    * [moby](https://github.com/moby/moby)
    * [docker engine](https://docs.docker.com/engine/)
    * [Reverse Engineer Docker Images into Dockerfiles](https://gcore.com/learning/reverse-engineer-docker-images-into-dockerfiles-with-dedockify/)
    * [How to generate a Dockerfile from an image?](https://stackoverflow.com/questions/19104847/how-to-generate-a-dockerfile-from-an-image)    
* podman
    * [podman](https://podman.io/)
    * [Getting Started with Podman](https://podman.io/getting-started/)
    * [Podman pull 'official' images from docker hub?](https://stackoverflow.com/questions/69162077/podman-pull-official-images-from-docker-hub)

```shell
#Check images
podman images

#Examples for podman pull
#TAG latest
podman pull docker.io/library/mysql
podman pull docker.io/vyos/vyos-build:current

#TAG 5.7
podman pull docker.io/library/mysql:5.7
```