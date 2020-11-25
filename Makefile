PAGES    := docs/index.html docs/subscribed.html docs/terms.html docs/privacy.html docs/downloads.html docs/404.html
PARTIALS := $(shell ls partials/* | sed 's/^/-p /')

build: $(PAGES)

docs/%.html: pages/%.html.mustache partials/*
	echo {} | mustache /dev/stdin $< $(PARTIALS) > $@

clean:
	rm $(PAGES)

dependencies:
	npm install -g mustache

.PHONY: clean
