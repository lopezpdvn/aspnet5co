.PHONY: help clean servelocal push

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  localserver   Start local doc server"
	@echo "  servelocal    Serve jekyll locally"
	@echo "  push	       Push master branch to origin"

localserver:
	./bin/localserver

servelocal:
	./bin/servelocal

push:
	git push origin gh-pages
