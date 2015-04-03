aspnet5

Candidate project names:

- aspnet5comm
- aspnet5

Development
===========

Uninstall mono-core and all other dependencies.

sudo yum -y remove mono-core

Install mono yum repo from http://www.mono-project.com/docs/getting-started/install/linux/#centos-fedora-and-derivatives

Install all mono

sudo yum -y install mono-complete

Install DNVM

source ~/.dnx/dnvm/dnvm.sh

dnmv use <alias>

dnu restore

Documentation
=============

Install system rubygems

sudo yum -y install rubygems ruby-devel rubygem-bundle gcc zlib-devel libxml2-devel libxslt-devel

Create file Gemfile

bundle install

bundle config build.nokogiri --use-system-libraries

bundle install

References
==========

https://help.github.com/articles/using-jekyll-with-pages/

https://jesusjzp.github.io/blog/2013/08/07/jekyll-environment-install/

https://help.github.com/articles/fork-a-repo/

http://www.mono-project.com/docs/getting-started/install/linux/#centos-fedora-and-derivatives
