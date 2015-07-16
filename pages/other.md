---
layout: article
title: "Other"
permalink: /other/
---

- - -

{% include toc.html %}

## The .NET Framework and its future

.NET is a general purpose software framework originally released by Microsoft
for the development of programs in environments such as desktops, servers,
mobile devices such as phones and tablets and constrained embedded systems.
This means that the .NET framework can be used to create cross-platform native
and web applications. It was originally released in the year 2000.

The .NET framework consists of a large class library called *Framewok Class
Library* (*FCL*) and provides language interoperability across several
programming languages such as C#, VisualBasic.NET, F#, Python, among others.
Programs written wich such library execute in a software environment named
*Common Language Runtime* (*CLR*), which is a virtual machine that provides
application services like memory management, exception handling and security.
Application code that takes advantage of such services is said to be *managed
code*. The framework also allows interoperability with *unmanaged code*, which
means that managed code can run side by side with code outside of the CLR
itself, for example to use legacy programs.

The current stable version of the .NET framework is 4.5.2 which was released on
May 5, 2014, and at the time of this writing the next .NET Framework 4.6 is in
preview.

### .NET 2015

The next generation of .NET technologies is being marketed with the term *.NET
2015* and it includes importante updates to the framework, the runtimes,
compilers, libraries, release licenses, applications models and development
workflows of applications and of the technologies. In short, Microsoft aims to
significantly improve the developer's experience by open sourcing the full
server-side .NET stack as well as other important development elements, making
the framework officially cross-platform by adding support to the Linux and Mac
OS platforms.

Regarding the software framework itself, from now on there will be 2 separate
.NETs

* **.NET Framework 4.6** will be the next version of the full framework,
  building upon 4.5.2. This is the familiar .NET most people already know,
  which will be included in Windows Vista and above. The .NET Framework 4.6
  will not be open sourced.

* **.NET Core 5** is a general purpose, modern and open source version of the
  framework currently in development, which when released will be supported by
  Microsoft and the community on Windows, Linux and Mac OS X. It is the
  foundation of all future .NET platforms and it's released under the [MIT
  license](https://github.com/dotnet/coreclr/blob/master/LICENSE.TXT).

  It is modular by design, and since it can be deployed itself as a Nuget
  package, it will make it possible for applications to ship with its own .NET
  framework without affecting other .NET applications running on the same
  machine, greatly simplifying deployment and package management. This means
  that invididual applications can exist isolated and will no longer require
  machine-wide updates to the .NET framework.

The following components are part of .NET 2015 too and are open source already:

* New versions of the .NET libraries **ASP.NET Web Forms** and **MVC 5**

* **.NET Compiler Platform**, AKA **Roslyn**. It provides C# and Visual Basic
  compilers with rich code analysis APIs.

* **RyuJIT**, the new default just-in-time (JIT) compiler for .NET on x64
  architectures.

* **ASP.NET 5**, the new application model for building modern and lean web
  applications.

The following components are part of .NET 2015 too but are not open source as
of now:

* **Windows Forms**

* **WPF**

* **.NET Native**

* **Universal Windows Apps**, AKA **Universal Windows Platform**

## Involvement with organizations

The .NET Foundation is and independent organization with the goal of improving
open source development and community collaboration around the .NET Framework
and related technologies. It was founded by Microsoft in April 2014. Miguel de
Icaza, co-founder and CTO of Xamarin is on the board of directors.

Microsoft continues to be involved with the Mono project, Xamarin and Unity.

*Mono* is an open source project that develops a Ecma-standard complian, .NET
Framework-compatible set of tools, most notably a C# compiler and a CLR.

*Xamarin* is a software company that creates .NET development tools to create
shared-code native applications on iOS, Android and Windows Phone.

*Unity Technologies* is the organization that develops Unity, a cross-platform
game engine used to develop games for consoles, PC, mobile devices and
websites. The engine's scripting is built on Mono.

## Cross-platform development with .NET

Since its first versions the .NET framework has been engineered to be
platform-agnostic. The specifications of the CLI (which includes the core class
libraries, CTS, and CIL), C#, and C++/CLI have been officially standardized by
[ECMA](http://www.ecma-international.org) and [ISO](http://www.iso.org). This
allows third parties to create alternative implementations of the standards,
since as of now Microsoft has only implemented the framework on the Windows
operating system.

The most notable third party implementations of the standards are done by the
Mono Project. *Mono* is an open source implementation of the .NET framework for
C# and the CLR, including additional functionality not provided by the
Microsoft's implementation. It runs in Windows, Linux, OS X, Android, BSD,
Solaris, PlayStation 3, Wii and Xbox 360. It includes support for ASP.NET,
ADO.NET, Windows Forms, LINQ to Objects, XML, SQL, C#, VisualBasic.NET.

With the recently announced .NET 2015 technologies and plans, cross platform
development for the server side will be much better and simpler. Given that
.NET Core will be officially cross-platform and the foundation for all future
.NET platforms, a single official implementation will be used to ship
applications to either Linux, Windows or OS X servers. And although there are
no plans to make Visual Studio IDE cross-platform, it will be possible to
remotely debug server applications in any environment from the IDE.

It is now possible to execute ASP.NET 5 applications on Windows, Linux and OS
X.

## ASP.NET 5

ASP.NET is one of the most used web frameworks. Among Microsoft technologies it
is notable in having been open source since its early versions. ASP.NET is
currently being revised and re-implemented as a modular, lean and cross
platform framework for its next release version 5, offering very important and
desirable features and advantages.

ASP.NET is currently being revised and re-implemented as a modular, lean and
cross platform framework for its next release version 5, offering very
important and desirable features and advantages. The license of the software
and the development methodology by Microsoft allows the project to benefit from
feedback and interaction with the community.

ASP.NET 5 includes architectural changes that make its core framework much
leaner and more modular. The whole framework is divided into a set of granular
and well factored NuGet packages. This allows to only request and install the
functionality actually required, considerably reducing the application's
footprint and improving its security.

ASP.NET 5 will run on both the full .NET Framework as well as on .NET Core when
released. Either choice is effectively cross-platform, since the full Mono's
framework already runs on different platforms.

Contrary to initial rumours, [ASP.NET 5 will support VisualBasic.NET along with
C#](http://blogs.msdn.com/b/webdev/archive/2015/04/23/making-it-better-asp-net-with-visual-basic-14.aspx).

Other changes and improvements are summarized as follows:

* New and better tooling support to simplify modern web development, including
  seamless integration with client-side frameworks including *AngularJS*,
  *KnockoutJS*, *Bootstrap*

* Support for popular JavaScript-based programs *Bower*, *Grunt* and *NodeJS*.

* Ability to host on IIS or self-host in a process.

* Unification of Web UI and Web API. *ASP.NET MVC 6*, the next release of
  ASP.NET MVC framework will merge ASP.NET Web API. Previously MVC 5 and Web
  API were two separate namespaces with almost identical APIs.

* Cloud optimized and cloud ready environment-based configuration.

* Integrated support for packaging and deploying applications as NuGet
  packages.

* Built-in lightweight *dependency injection*, which can be replaced with other
  DI frameworks if needed.

* No more support for Web Forms. Note that this doesn't mean that Microsoft
  will completely drop support for Web Forms, but only that Web Forms won't be
  developed further from version 5 and onwards of ASP.NET. Web Forms in ASP.NET
  4 will continue to be supported.

* Open source and community focused.
### DNX

*DNX* stands for the *.NET Execution Environment* and basically is the thing
that loads and runs the .NET application including the .NET framework itself.
Formally it is a software development kit and runtime environment providing a
host process and CLR hosting logic.

DNX eases development given it provides a consistent environment across the
supported platforms. It is a command line tool, so starting the same
application in OS X, Linux or Windows is done with the same command on each
platform.

A DNX project is a folder with a `project.json` file, which contains the
metadata, dependencies, targeted frameworks and other information (such as
authors, license, etc) of your project, which in the end will be a NuGet
package. The folder name is the name of the project.

### Docker

Docker is a software project that implements lightweight containers on top of
the Linux operating system. Docker containers are similar to virtual machines
in terms of isolation of packaged applications, but they are lighter and easier
to maintain and deploy.

Docker can be integrated into several cloud services providers such as
Microsoft Azure, Amazon Web Services, Google Cloud Platform, Jenkins and
Puppet. A lot of applications and development environments have been
*dockerized*, which means that a docker container with the respective
application or technology already installed and provided by official or third
party sources. A few examples of **official** containers:

- [Fedora base images](https://registry.hub.docker.com/_/fedora/)

- [Images for Ruby programming language and
  environment](https://registry.hub.docker.com/_/ruby/)

- [ASP.NET image containers by
  Microsoft](https://registry.hub.docker.com/u/microsoft/aspnet/)

## Community

Not only this new version continues to have all source code available, but the
methodology adopted by the development team allows and encourages interaction
with the community. Reporting issues, submitting feature requests and other
community interactions happen at below locations:

* The [ASP.NET Home repository](https://github.com/aspnet/Home) is the starting
  point for people to learn about ASP.NET 5. The repo issue tracker should be
  used for general feedback and discussions.

* Each particular ASP.NET library and program has its own Github repository.
  Particular issue reports and feature requests should be submitted in the
  respective repository. See all the repositores at the [ASP.NET project Github
  profile](https://github.com/aspnet/).

* The [ASP.NET 5 forum](http://forums.asp.net/1255.aspx/1?ASP+NET+vNext) at the
  [ASP.NET forums site](http://forums.asp.net/).

* [StackOverflow][]. Search with the tags: [asp.net-5][], [asp.net-mvc-6][] and
  [entity-framework-7][].

* [JabbR chat room][] for real-time discussions.

[StackOverflow]: http://stackoverflow.com
[asp.net-5]: http://stackoverflow.com/questions/tagged/asp.net-5
[asp.net-mvc-6]: http://stackoverflow.com/questions/tagged/asp.net-mvc-6
[entity-framework-7]: http://stackoverflow.com/questions/tagged/entity-framework-7
[JabbR chat room]: https://jabbr.net/#/rooms/aspnetvnext

Additionally, every Tuesday Microsoft team engages in real time with the
community in the [ASP.NET Community Standup][] at [Scott Hanselman's YouTube
Channel](https://www.youtube.com/user/shanselman). In these weekly sessions the
Microsoft team reports recent development and design decisions and also answers
questions submitted in the Google Hangout and on Twitter.

[ASP.NET Community Standup]: https://www.youtube.com/playlist?list=PL0M0zPgJ3HSftTAAHttA3JQU4vOjXFquF
