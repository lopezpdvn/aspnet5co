.PHONY: help clean servelocal push

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  servelocal    Serve jekyll locally"
	@echo "  push	       Push master branch to origin"

servelocal:
	jekyll serve

push:
	git push origin gh-pages
