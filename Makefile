PAGES    := index.html subscribed.html
STATIC   := $(PAGES) favicon.ico style/ fonts/
PARTIALS := $(shell ls partials/* | sed 's/^/-p /')

build: $(PAGES)

%.html: pages/%.html.mustache partials/*
	echo {} | mustache /dev/stdin $< $(PARTIALS) > $@

clean:
	rm $(PAGES)

dependencies:
	npm install -g mustache

.PHONY: clean
