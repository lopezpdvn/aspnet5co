.PHONY: help clean servelocal push

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  localserver   Start local doc server"
	@echo "  servelocal    Serve jekyll locally"
	@echo "  push	       Push master branch to origin"

localserver:
	./bin/localserver

servelocal:
	bundle exec jekyll serve -w -D -V -H 0.0.0.0

push:
	git push origin gh-pages
