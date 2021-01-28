PAGES    := docs/index.html docs/subscribed.html docs/terms.html docs/privacy.html docs/downloads.html docs/404.html
BLOG     := docs/blog/index.html docs/blog/towards-decentralized-code-collaboration.html
PARTIALS := $(shell ls partials/* | sed 's/^/-p /')

build: $(PAGES) $(BLOG)

docs/%.html: pages/%.html.mustache partials/*
	echo {} | mustache /dev/stdin $< $(PARTIALS) > $@

docs/blog/%.html: blog/%.html.mustache partials/*
	echo {} | mustache /dev/stdin $< $(PARTIALS) > $@

clean:
	rm $(PAGES)
	rm $(BLOG)

dependencies:
	npm install -g mustache

.PHONY: clean
