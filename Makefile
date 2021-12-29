PAGES    := docs/index.html docs/subscribed.html docs/brand.html docs/terms.html docs/privacy.html docs/downloads.html docs/tryit.html docs/404.html docs/community.html
BLOG     := docs/blog/index.html docs/blog/towards-decentralized-code-collaboration.html docs/blog/radicle-link.html docs/blog/collaborating-on-radicle.html docs/blog/integrating-with-ethereum.html docs/blog/introducing-rad.html docs/blog/announcing-the-seeders-program.html docs/blog/radicle-orgs.html
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
