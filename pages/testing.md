---
layout: article
title: "Testing with DNX"
permalink: /testing/
---

- - -

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
