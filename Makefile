build:
	multimarkdown uiautomation.md > uiautomation.html

preview: build
	open uiautomation.html

install: build
	cp uiautomation.html /Volumes/cchoi/public_html/uiautomation/index.html
	cp -r images /Volumes/cchoi/public_html/uiautomation

