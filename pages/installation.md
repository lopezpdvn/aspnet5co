---
layout: article
title: "Installation on Windows and Docker"
permalink: /installation/
---

{% include toc.html %}

- - -

The following instructions are for installing development environment on
Windows and Docker, as well as for documentation environment on Linux. You can
see more detailed instructions that include the Mac OS X operating system
[here](http://docs.asp.net/en/latest/getting-started/index.html).

In any case, the main objective is to install DNVM and DNU. With these tools
you can then install specific DNX flavours to develop your .NET applications,
including ASP.NET 5 projects.

## Installation on Windows

For Windows you have the choice of whether using Visual Studio or not, using it
is recommended. Visual Studio 2015 RTM will be released on July 20th and it
will provide a free community version. When installing it, be sure to select
the *Microsoft Web Developer Tools* checkbox. This will install ASP.NET 4 and
5.

You can also install ASP.NET 5 without Visual Studio. To do this you just have
to run a one-liner command provided in the ASP.NET home repo README file,
either the [Powershell](https://github.com/aspnet/home#powershell) or the
[CMD](https://github.com/aspnet/home#cmd) version.

## Installation on Docker

Clone [aspnet5co repository](https://github.com/lopezpdvn/aspnet5co)

{% highlight bash %}
$ git clone 'https://github.com/lopezpdvn/aspnet5co'
{% endhighlight %}

Checkout `master` branch

{% highlight bash %}
$ cd aspnet5co
$ git checkout origin/master
$ git checkout master
{% endhighlight %}

Locally build the image with the [project's
Dockerfile](https://github.com/lopezpdvn/aspnet5co/blob/master/Dockerfile)

{% highlight bash %}
$ sudo docker build -t aspnet5co-base .
{% endhighlight %}

Create/run the container. Note that `CONTAINERPORT` matches the PORT in the
Dockerfile.

{% highlight bash %}
HOSTPORT=4000
CONTAINERPORT=5000
NAME=aspnet5co-dev
IMAGE=aspnet5co-base
sudo docker run -t -i -p $HOSTPORT:$CONTAINERPORT -h $NAME -e "ASPNET5CO_USER=$(id -u)" --name $NAME $IMAGE
{% endhighlight %}

{% highlight bash %}
$ HOSTPORT=<X>
$ CONTAINERPORT=5000
$ HOSTVOLUME=<Y>
$ CONTAINERVOLUME=/aspnet5co_vol
$ NAME=aspnet5co-dev
$ IMAGE=aspnet5co-base
$ sudo docker run -t -i -p $HOSTPORT:$CONTAINERPORT -v $HOSTVOLUME:$CONTAINERVOLUME -h $NAME -e "ASPNET5CO_USER=$(id -u)" --name $NAME $NAME
{% endhighlight %}

Inside the container, create user aspnet5co_user with UID same as the
environment variable ASPNET5CO_USER. Supply a password, it's ok to forget/lose
it.

{% highlight bash %}
root@aspnet5co-dev:/# adduser --uid $ASPNET5CO_USER aspnet5co_user
{% endhighlight %}

Exit the container

{% highlight bash %}
root@aspnet5co-dev:/# exit
{% endhighlight %}

The container created in can be used to run and manage DNX applications and
also to create scaffolds/templates.
