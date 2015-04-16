---
layout: article
title: "Development"
---

{% include toc.html %}

### Development

A Docker container is used for development. Run below commands to set up docker in a Fedora 21 machine.

{% highlight bash %}
sudo yum -y install docker
sudo systemctl start docker
sudo docker pull ubuntu:14.10
sudo docker create -h aspnet5 --name=aspnet5 ubuntu:14.10
sudo docker start -t -i ubuntu:14.10
{% endhighlight %}

Start the container from the pulled image in interactive mode

{% highlight bash %}
sudo docker start -t -i ubuntu:14.10
{% endhighlight %}

Set up needed tools inside the container and exit.

{% highlight bash %}
apt-get update
apt-get upgrade
apt-get install git autoconf libtool automake build-essential gettext screen unzip
exit
{% endhighlight %}

Get container id, and commit it to create a new image.

{% highlight bash %}
sudo docker ps -a
sudo docker commit -m "Base for aspnet5 dev" -a "Pedro I. Lopez" $ctnid lopezpdvn/aspnet5:base_ubuntu_0
{% endhighlight %}

Start the container again in interactive mode

{% highlight bash %}
sudo docker run -h aspnet5 -t -i lopezpdvn/aspnet5:base_ubuntu_0
{% endhighlight %}

Install latest Mono 3 release. This is the Mono instance that will be used to compile Mono 4, via bootstrapping.

{% highlight bash %}
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
apt-get update
apt-get install mono-complete referenceassemblies-pcl
{% endhighlight %}

Using mono 3.12.1

{% highlight bash %}
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
{% endhighlight %}

Now we're ready to compile latest Mono from the master branch at GitHub, using the tools previously installed. We will be installing at /usr/local. Note that building may take around 1 hour.

{% highlight bash %}
PATH=$PREFIX/bin:$PATH
git clone https://github.com/mono/mono.git
cd mono
./autogen.sh --prefix=$PREFIX
make
make install
{% endhighlight %}

### Documentation

Follow these steps to setup a Jekyll environment for the documentation of the project.

Install system rubygems

{% highlight bash %}
sudo yum -y install rubygems ruby-devel rubygem-bundle gcc
zlib-devel libxml2-devel libxslt-devel
{% endhighlight %}

Create file Gemfile

{% highlight bash %}
bundle install
bundle config build.nokogiri --use-system-libraries
bundle install
{% endhighlight %}

References

https://help.github.com/articles/using-jekyll-with-pages/

https://jesusjzp.github.io/blog/2013/08/07/jekyll-environment-install/

https://help.github.com/articles/fork-a-repo/

http://www.mono-project.com/docs/getting-started/install/linux/#centos-fedora-and-derivatives

https://gist.github.com/glennc/2b259bfeda1aa7fc144c

http://www.mono-project.com/docs/getting-started/install/linux/ci-packages/

http://davidfowl.com/diagnosing-dependency-issues-with-asp-net-5/

http://www.mono-project.com/docs/compiling-mono/linux/

http://www.mono-project.com/docs/getting-started/install/linux/
