---
---
# ASPNET5

<!--
Candidate project names:

- aspnet5comm
- aspnet5
-->

## Development

A docker container is used for development. Run below commands to set up docker
in a Fedora 21 machine.

```
sudo yum install docker
sudo systemctl start docker
sudo docker pull ubuntu:14.10
sudo docker create -h aspnet50 --name=aspnet50 ubuntu:14.10
sudo docker start -t -i ubuntu:14.10
```



```
apt-get update
apt-get upgrade
apt-get install git autoconf libtool automake build-essential gettext screen unzip
exit
```

Get container id with

sudo docker ps -a

sudo docker commit -m "Base for aspnet5 dev" -a "Pedro I. Lopez" $ctnid lopezpdvn/aspnet5:base_ubuntu_0

sudo docker run -h aspnet5 -t -i lopezpdvn/aspnet5:base_ubuntu_0

Install latest Mono release from http://www.mono-project.com/docs/getting-started/install/linux/

```
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
apt-get update
apt-get install mono-complete referenceassemblies-pcl
```


### Compile and install Mono

Using mono

```
root@aspnet5:/# mono --version
Mono JIT compiler version 3.12.1 (tarball Fri Mar  6 19:12:47 UTC 2015)
Copyright (C) 2002-2014 Novell, Inc, Xamarin Inc and Contributors.
www.mono-project.com
        TLS:           __thread
        SIGSEGV:       altstack
        Notifications: epoll
        Architecture:  amd64
        Disabled:      none
        Misc:          softdebug 
        LLVM:          supported, not enabled.
        GC:            sgen
```



steps from http://www.mono-project.com/docs/compiling-mono/linux/

Documentation
=============

Install system rubygems

sudo yum -y install rubygems ruby-devel rubygem-bundle gcc zlib-devel libxml2-devel libxslt-devel

Create file Gemfile

bundle install

bundle config build.nokogiri --use-system-libraries

bundle install

## TODO

TODO
current_docker = 85696bf1b7b8
NEED TO COMPILE MONO 4.1 arrrr from master
https://github.com/aspnet/DataProtection/issues/68

References
==========

<https://help.github.com/articles/using-jekyll-with-pages/>

<https://jesusjzp.github.io/blog/2013/08/07/jekyll-environment-install/>

<https://help.github.com/articles/fork-a-repo/>

<http://www.mono-project.com/docs/getting-started/install/linux/#centos-fedora-and-derivatives>

<https://gist.github.com/glennc/2b259bfeda1aa7fc144c>

<http://www.mono-project.com/docs/getting-started/install/linux/ci-packages/>

<http://davidfowl.com/diagnosing-dependency-issues-with-asp-net-5/>

<http://www.mono-project.com/docs/compiling-mono/linux/>

<http://www.mono-project.com/docs/getting-started/install/linux/>
