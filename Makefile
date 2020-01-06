PAGES    := public/index.html public/subscribed.html
PARTIALS := $(shell ls partials/* | sed 's/^/-p /')

build: $(PAGES)

public/%.html: pages/%.html.mustache partials/*
	echo {} | mustache /dev/stdin $< $(PARTIALS) > $@

clean:
	rm $(PAGES)

dependencies:
	npm install -g mustache

.PHONY: clean
