---
layout: article
title: "Cross-platform development with .NET"
permalink: /dotnet-cross-platform-development/
---

{% include toc.html %}

- - -

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
