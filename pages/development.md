---
layout: article
title: "Development"
permalink: /development/
---

- - -

{% include toc.html %}

Even at these early development versions of the ASP.NET 5 framework, there are
several ways to develop and run DNX projects:

* Visual Studio 2015 with the Microsoft Web Developer Tools
* [Visual Studio Code](https://code.visualstudio.com)
* [Omnisharp project](http://www.omnisharp.net). Allows .NET development with
  editors *Atom*, *Brackets*, *Emacs*, *Sublime Text*, *Vim*, *Visual Studio
  Code* as well as with the *Yeoman* scaffolder.

Recall that a DNX project is cross-platform independently of on what platform
it was developed/built/packaged.

This section presents instructions to set up development on Docker containers
and shows deployment of a demo application.

## Development on Docker

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
$ cd aspnet5co
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

### Run and manage DNX projects

### Create scaffolds

{% highlight bash %}
root@aspnet7co:/# chown -R aspnet5co_user /aspnet5co_vol
root@aspnet5co:/# su aspnet5co
aspnet5co_user@aspnet5co:/$ cd aspnet5co_vol
aspnet5co_user@aspnet5co:/aspnet5co_vol$
{% endhighlight %}

Create scaffolds with yeoman.

{% highlight bash %}
aspnet5co_user@aspnet5co:/aspnet5co_vol$ yo generator-aspnet
<...>
aspnet5co_user@aspnet5co:/aspnet5co_vol$ exit
<...>
{% endhighlight %}

As root

{% highlight bash %}
root@aspnet7co:/aspnet5co_vol/scaffold# dnu restore
<...>
root@aspnet7co:/aspnet5co_vol/scaffold# dnx . kestrel
{% endhighlight %}
