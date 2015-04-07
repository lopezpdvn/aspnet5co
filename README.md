aspnet5

Candidate project names:

- aspnet5comm
- aspnet5

Development
===========

Fedora 21

sudo yum install docker

sudo systemctl start docker

sudo docker pull fedora:21

sudo docker run -t -i fedora:21 /bin/bash

# yum clean all ; yum -y update
# yum -y install less screen yum-utils tar autoconf automake libtool make unzip git gettext-devel mono-devel gcc-c++ glibc-devel
# exit

Get container id with

sudo docker ps -a

sudo docker commit -m "Base for aspnet5 dev" -a "Pedro I. Lopez" $ctnid lopezpdvn/aspnet5:base

sudo docker run -h aspnet5 -t -i lopezpdvn/aspnet5:base

# rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
# yum-config-manager --add-repo http://jenkins.mono-project.com/repo/centos/
# yum -y install mono-snapshot-latest
# . mono-snapshot mono    # latest, other mono can be sourced
# mozroots --import --machine --sync

[steps from gist]


TODO
====

TODO
current_docker = 85696bf1b7b8
NEED TO COMPILE MONO 4.1 arrrr from master
https://github.com/aspnet/DataProtection/issues/68

Install Mono
============

Using mono

[mono-4.0-20150406173800]sh-4.3# mono --version
Mono JIT compiler version 4.0.0 (tarball Mon Apr  6 13:49:28 EDT 2015)
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


Documentation
=============

Install system rubygems

sudo yum -y install rubygems ruby-devel rubygem-bundle gcc zlib-devel libxml2-devel libxslt-devel

Create file Gemfile

bundle install

bundle config build.nokogiri --use-system-libraries

bundle install

References
==========

https://help.github.com/articles/using-jekyll-with-pages/

https://jesusjzp.github.io/blog/2013/08/07/jekyll-environment-install/

https://help.github.com/articles/fork-a-repo/

http://www.mono-project.com/docs/getting-started/install/linux/#centos-fedora-and-derivatives

https://gist.github.com/glennc/2b259bfeda1aa7fc144c

http://www.mono-project.com/docs/getting-started/install/linux/ci-packages/

http://davidfowl.com/diagnosing-dependency-issues-with-asp-net-5/
