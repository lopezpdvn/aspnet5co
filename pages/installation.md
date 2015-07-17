---
layout: article
title: "Installation on Windows and Docker"
permalink: /installation/
---

- - -

{% include toc.html %}

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

## DNX, DNVM and DNU

**DNX** stands for the *.NET Execution Environment* and basically is the thing
that loads and runs the .NET application including the .NET framework itself.
Formally it is a software development kit and runtime environment providing a
host process and CLR hosting logic.

**DNVM** (*DNX Version Manager*) is a command line utility that manages the
different DNX versions installed on a host. It can search and install specific
DNX versions, upgrade to latests versions, choose what NuGet package feed to
download from, alias the different DNXs installed and more.

Several different DNXs can simultaneously run and coexist in a single host
machine, and DNX applications/projects can select a specific DNX as an runtime
environment. One way in which a given DNX might be different to another DNX is
in the particular .NET framework they use: as we previously commented a DNX can
choose between using the .NET Core framework or Mono on either Linux, OS X or
Windows; or using the full .NET framework on Windows only.

Another way in which a given DNX may differ from another DNX is the version.
Since currenly the whole ASP.NET is in development the NuGet feeds are
providing the CI (*Continuous Integration*) builds which are identified by
incremental numbers, as well as releases that are more stable, for example the
ones tagged with a beta number.

**DNU** (*DNX Utility*) is a command line tool that handles all operations that
involve packages in a DNX application. Use DNU to restore the packages and
dependencies specified in the `project.json` file, install specific packages by
names from the NuGet feeds, build the DNX project as a NuGet package, list the
dependencies of a particular project, and more.

## The DNX directory

Following the UNIX practice, by default DNVM and DNU download runtimes and
packages to the DNX directory:

* On Windows is `%USERPROFILE%\.dnx`
* On Linux and OS X is `$HOME/.dnx`

The DNX directory contains the following directories:

* `packages`: Stores the installed NuGet packages by DNU
* `runtimes`: Stores the installed runtimes by  DNVM
* `alias`: Stores the alias to the different DNX/runtimes. For example to alias
  the runtime `dnx-clr-win-x86.1.0.0-beta4` as `default`, create a text file
  called `default.txt` in the alias subdirectory which has as content a line
  with the name of the runtime.

{% highlight console %}
C:\>type %USERPROFILE%\.dnx\alias\default.txt
dnx-clr-win-x86.1.0.0-beta4
{% endhighlight %}
