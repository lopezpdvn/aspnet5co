---
layout: article
title: "DNX, DNVM and DNU"
permalink: /dnx-dnvm-dnu/
---

{% include toc.html %}

- - -

## DNX

*DNX* stands for the *.NET Execution Environment* and basically is the thing
that loads and runs the .NET application including the .NET framework itself.
Formally it is a software development kit and runtime environment providing a
host process and CLR hosting logic.

DNX eases development given it provides a consistent environment across the
supported platforms. It is a command line tool, so starting the same
application in OS X, Linux or Windows is done with the same command on each
platform.

When selecting a DNX you choose the .NET environment to use from the three
available options:

- The full .NET framework, only supported on Windows, with source code
  available but not open-source-style contributions.

- .NET Core, which currenlty is in development but rapidly evolving. Eventually
  will be cross-platform but current support for Linux and Mac OS X is very
  early.

- Mono, which is truly cross-platform.

A DNX project is a folder with a `project.json` file, which contains the
metadata, dependencies, targeted frameworks and other information (such as
authors, license, etc) of your project, which in the end will be a NuGet
package. The folder name is the name of the project.

## DNVM

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

## DNU

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
