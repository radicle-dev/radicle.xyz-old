PAGES    := docs/index.html docs/subscribed.html docs/towards-decentralized-code-collaboration.html \
            docs/radicle-link.html
PARTIALS := $(shell ls partials/* | sed 's/^/-p /')

build: $(PAGES)

docs/%.html: pages/%.html.mustache partials/*
	echo {} | mustache /dev/stdin $< $(PARTIALS) > $@

clean:
	rm $(PAGES)

dependencies:
	npm install -g mustache

.PHONY: clean
