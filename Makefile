DIST=$(shell pwd)/dist

build: clean
	lsc -p -b -c src/index.ls | uglifyjs -o dist/index.js
	lsc -p -b -c src/iframe.ls | uglifyjs -o dist/iframe.js
	lsc -p -b -c src/speaker-deck.ls | uglifyjs -o dist/speaker-deck.js

clean:
	rm -rf $(DIST) || exit 0 && mkdir $(DIST)

pkg:
	cp -R  $(shell pwd)/{package.json,node_modules,README.md} $(DIST)

publish: clean build pkg
	cd $(DIST) && npm publish .

