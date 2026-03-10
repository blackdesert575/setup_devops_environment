# docker

## guides/tips/...etc

* [configure-host-gateway-ip](https://docs.docker.com/reference/cli/dockerd/#configure-host-gateway-ip)
* [extra_hosts](https://docs.docker.com/reference/compose-file/services/#extra_hosts)
* issues: 
    * java服務Dockerfile/Docker compose優化:
        * 避免服務無法優雅地關閉，甚至本身的程式碼實作沒有將服務的狀態寫回去RDBMS，暫時先用手動SQL紀錄服務的狀態，避免重新啟動時，服務無法正常運作。

* Dockerfile lint
    * [github.com/hadolint/hadolint](https://github.com/hadolint/hadolint)
        * [github.com/hadolint/hadolint/wiki/DL3059](https://github.com/hadolint/hadolint/wiki/DL3059)
* watchtower
    * only working for docker image tag: latest
    * Watchtower is intended to be used in homelabs, media centers, local dev environments, and similar.
    * [containrrr.dev/watchtower/stop-signals/](https://containrrr.dev/watchtower/stop-signals/)
    * [containrrr.dev/watchtower/usage-overview/](https://containrrr.dev/watchtower/usage-overview/)
    * [github.com/containrrr/watchtower](https://github.com/containrrr/watchtower)
        * A process for automating Docker container base image updates.
* [docker-architecture](https://docs.docker.com/guides/docker-overview/#docker-architecture)
* [github.com/dockur/windows](https://github.com/dockur/windows)
* [github.com/dockur/macos](https://github.com/dockur/macos)
* [github.com/moby/moby](https://github.com/moby/moby)
* [github.com/docker/cli](https://github.com/docker/cli)
* [github.com/docker/compose](https://github.com/docker/compose)
* [github.com/docker-archive/docker-ce/blob/master/README.md](https://github.com/docker-archive/docker-ce/blob/master/README.md)
* [Containers versus virtual machines (VMs)](https://docs.docker.com/guides/docker-concepts/the-basics/what-is-a-container/#containers-versus-virtual-machines-vms)
* [Inline cache](https://docs.docker.com/build/cache/backends/inline/)
* process gracefully shutdown
    * [askubuntu.com/questions/201303/what-is-a-defunct-process-and-why-doesnt-it-get-killed](https://askubuntu.com/questions/201303/what-is-a-defunct-process-and-why-doesnt-it-get-killed)
    * [執行 Docker 容器可使用 dumb-init 或 tini 改善程序優雅結束的問題](https://blog.miniasp.com/post/2021/07/09/Use-dumb-init-in-Docker-Container)
    * [tini](https://github.com/krallin/tini)
        * A tiny but valid `init` for containers
    * [dumb-init](https://github.com/Yelp/dumb-init)
        * A minimal init system for Linux containers
* [How do I start the docker daemon on macOS?](https://apple.stackexchange.com/questions/373888/how-do-i-start-the-docker-daemon-on-macos)
    * [docs.docker.com/engine/install/binaries/#install-client-binaries-on-macos](https://docs.docker.com/engine/install/binaries/#install-client-binaries-on-macos)
    * [github.com/abiosoft/colima](https://github.com/abiosoft/colima)
        * Colima - container runtimes on macOS (and Linux) with minimal setup.
