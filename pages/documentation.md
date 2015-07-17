---
layout: article
title: "aspnet5co documentation"
permalink: /documentation/
---

- - -

{% include toc.html %}

The documentation of project aspnet5co is built with a Docker images that uses
the [Skinny Bones](http://mmistakes.github.io/skinny-bones-jekyll)
[Jekyll](http://jekyllrb.com) theme.

## Installation

Follow these steps to setup a Jekyll environment for the documentation of the
project. Install Docker and start daemon

{% highlight bash %}
$ # For Fedora systems
$ sudo yum -y install docker-io
$ sudo systemctl start docker.service
{% endhighlight %}

Clone the [aspnet5co repository](https://github.com/lopezpdvn/aspnet5co)

{% highlight bash %}
$ git clone git@github.com:lopezpdvn/aspnet5co.git
$ cd aspnet5co
{% endhighlight %}

Run [Jekyll container](https://github.com/grahamc/docker-jekyll) from Docker
Hub inside the repository directory. The first time will take a few minutes
since it will download the docker image and build it.

{% highlight bash %}
$ HOSTPORT=<host port number>
$ sudo docker run -t -i -v "$PWD:/src" -p $HOSTPORT:4000 --entrypoint=bash grahamc/jekyll
...
root@29bfc31d9ce3:/src# cd
{% endhighlight %}

Install all dependencies

{% highlight bash %}
root@29bfc31d9ce3:/src# bundle install
{% endhighlight %}

Get out of the container.

{% highlight bash %}
root@29bfc31d9ce3:/src# exit
{% endhighlight %}

Create a Docker image from the container using the container id shown in the
container prompt, in this case is `29bfc31d9ce3` and we're naming it
`lopezpdvn/aspnet5co-doc`

{% highlight bash %}
$ sudo docker commit 29bfc31d9ce3 lopezpdvn/aspnet5co-doc0
{% endhighlight %}

Stop and remove original container used to create the image

{% highlight bash %}
$ sudo docker stop 29bfc31d9ce3
$ sudo docker rm 29bfc31d9ce3
{% endhighlight %}

## Building and serving the documentation site

You're done, to locally build and serve the documentation you need to do 2
things:

1. Start a temporary container with the image created above
2. Run the Make target `servelocal`

To start a temporary container you run the below commands

{% highlight bash %}
$ HOSTPORT=<host port number>
$ sudo docker run -t -i -v "$PWD:/src" -p $HOSTPORT:4000 --entrypoint=bash grahamc/jekyll
root@<temporary container id>:/src#
{% endhighlight %}

What I do is I create short script at `bin/localserver` which sets a few
details of my host machine including the host port for the HTTP server and runs
above command.  Then I run such script with the Make target `localserver`

{% highlight bash %}
$ make localserver
root@<temporary container id>:/src#
{% endhighlight %}

Then inside the container you run the Make target `servelocal`

{% highlight bash %}
root@<temporary container id>:/src# make servelocal
{% endhighlight %}

The docker container will execute the Jekyll server and serve the contents on
the selected host port.
