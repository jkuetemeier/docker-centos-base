# Docker [jkuetemeier/centos-base](https://registry.hub.docker.com/u/jkuetemeier/centos-base/)

CentOS 7 Docker base image with updates, Zsh, Git, Vim and ssmtp (mail)

Docker Hub link: [https://registry.hub.docker.com/u/jkuetemeier/centos-base/](https://registry.hub.docker.com/u/jkuetemeier/centos-base/)

## How to run

#### Prerequirements - Docker

Install `docker`, e.g. on CentOS: http://wiki.centos.org/Cloud/Docker

#### Get pre compiled image

    docker pull jkuetemeier/centos-base

#### Run

    docker run -it jkuetemeier/centos-base

## What's in this container?

Latest, official [CentOS 7 Docker](https://registry.hub.docker.com/_/centos/) container.

### This container include the following additional features

- [deltarpm](https://gitorious.org/deltarpm) for faster updates
- Bug-Workaround: fix broken sym-link /var/lock -> /var/run/lock in CentOS Base container
- [Zsh](http://www.zsh.org/) as additional shell
- [Git](http://git-scm.com/) e.g. for cloning configuration files
- [Vim](http://www.vim.org/) better editing, when you build and test your containers upon this one
- [ssmtp](https://packages.qa.debian.org/s/ssmtp.html) (extreme simple MTA) to allow sending mails (e.g. for the [centos-php-fpm](https://github.com/jkuetemeier/docker-centos-php-fpm) container)
- [https://github.com/jkuetemeier/pub-home.git](https://github.com/jkuetemeier/pub-home.git) config for zsh, git and vim
