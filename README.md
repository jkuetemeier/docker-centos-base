docker-centos-base
==================

## How to run

Install `docker`, e.g. on CentOS: http://wiki.centos.org/Cloud/Docker

CentOS 7 Docker Base image with Updates, ZSH and git

    docker pull jkuetemeier/centos-base

    docker run jkuetemeier/centos-base


## What's in this container?

Latest, official [CentOS 7 Docker](https://registry.hub.docker.com/_/centos/) container.

### This container adds:

- Bug-Workaround: fix broken sym-link /var/lock -> /var/run/lock in CentOS Base container
- installed [Zsh](http://www.zsh.org/) as additional shell
- installed [Git](http://git-scm.com/) e.g. for cloning configuration files
- installed [Vim](http://www.vim.org/) better editing, when you build and test your containers upon this one
- installed [ssmtp](https://packages.qa.debian.org/s/ssmtp.html) (extreme simple MTA) to allow mails
- integrated https://github.com/jkuetemeier/pub-home.git config for zsh, git and vim
