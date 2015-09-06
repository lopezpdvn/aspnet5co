---
layout: article
title: "Development"
permalink: /development/
---

{% include toc.html %}

- - -

Even at these early development versions of the ASP.NET 5 framework, there are
several ways to develop and run DNX projects:

* Visual Studio 2015 with the Microsoft Web Developer Tools
* [Visual Studio Code](https://code.visualstudio.com)
* [Omnisharp project](http://www.omnisharp.net). Allows .NET development with
  editors *Atom*, *Brackets*, *Emacs*, *Sublime Text*, *Vim*, *Visual Studio
  Code* as well as with the *Yeoman* scaffolder.

Recall that a DNX project is cross-platform independently of on what platform
it was developed.

## Create scaffolds

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

## Testing with DNX

Follow [these
instructions](http://xunit.github.io/docs/getting-started-dnx.html) but don't
run from the command line. Instead, after adding the `test` command in
`project.json` build the solution. In the standard toolbar, look for the button
with the green *play* symbol, click the arrow at its right to show the dropdown
and select `test`. Now start execution without debugging (Ctrl+F5)

As you can see Visual Studio automatically created a Debug profile for you
based in the command created in the `project.json` file. The name of the Debug
profile is the same as the name of command. You can see the profiles in the
*Project Properties*, tab *Debug*.

Additionally, the Test Explorer should have your tests as of now, you can run
from there too.
