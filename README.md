## Archived

This project is archived.

Meanwhile I would recommend you to use Docker in a completely different way. Have a look at https://wolfszwinkern.com to get the latest tips about Docker.

# Docker [kuetemeier/centos-base](https://registry.hub.docker.com/u/kuetemeier/centos-base/)

CentOS 7 Docker base image with updates, Zsh, Git, Vim and ssmtp (mail)

Docker Hub link: [https://registry.hub.docker.com/u/jkuetemeier/centos-base/](https://registry.hub.docker.com/u/jkuetemeier/centos-base/)

## How to run

#### Prerequirements - Docker

Install `docker`, e.g. on CentOS: http://wiki.centos.org/Cloud/Docker

#### Get pre compiled image

    docker pull kuetemeier/centos-base

#### Run

    docker run -it kuetemeier/centos-base

#### or build your own from this Dockerfile

    docker build -t my-centos-base .
    docker run -it my-centos-base

## What's in this container?

Latest, official [CentOS 7 Docker](https://registry.hub.docker.com/_/centos/) container.

### This container include the following additional features

- [deltarpm](https://gitorious.org/deltarpm) for faster updates
- Bug-Workaround: fix broken sym-link /var/lock -> ../run/lock in CentOS Base container
- [Zsh](http://www.zsh.org/) as additional shell
- [Git](http://git-scm.com/) e.g. for cloning configuration files
- [Vim](http://www.vim.org/) better editing, when you build and test your containers upon this one
- [ssmtp](https://packages.qa.debian.org/s/ssmtp.html) (extreme simple MTA) to allow sending mails (e.g. for the [centos-php-fpm](https://github.com/jkuetemeier/docker-centos-php-fpm) container)
- [https://github.com/jkuetemeier/pub-home.git](https://github.com/jkuetemeier/pub-home.git) config for zsh, git and vim
