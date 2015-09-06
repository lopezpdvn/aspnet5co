---
layout: article
title: "Introduction to ASP.NET 5"
permalink: /aspnet5-introduction/
---

{% include toc.html %}

- - -

ASP.NET is one of the most used web frameworks. Among Microsoft technologies it
is notable in having been open source since its early versions. ASP.NET is
currently being revised and re-implemented as a modular, lean and cross
platform framework for its next release version 5, offering very important and
desirable features and advantages.  The license of the software and the
development methodology by Microsoft allow the project to benefit from
feedback and interaction with the community.

ASP.NET 5 includes architectural changes that make its core framework much
leaner and more modular. The whole framework is divided into a set of granular
and well factored NuGet packages. This allows to request and install only the
functionality actually required, considerably reducing the application's
footprint and improving its security.

ASP.NET 5 will run on both the full .NET Framework as well as on .NET Core when
released. Either choice is effectively cross-platform, since the full Mono's
framework already runs on different platforms.  Contrary to initial rumours,
[ASP.NET 5 will support VisualBasic.NET along with
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
