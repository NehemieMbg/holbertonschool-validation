
help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/
build:
	hugo
	touch ./awesome-api
clean:
	rm -rf dist/*
post:
	hugo new content/posts/$(POST_NAME).md

	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
lint:
	markdownlint README.md DEPLOY.md
	shellcheck setup.sh

unit-tests:
	make POST_TITLE=GoNotGo POST_NAME='GoOrNot' post
	make build
	make clean
	touch ./coverage-units.out

integration-tests:
	ls dist/
	touch ./coverage-integrations.out
validate:
	pwd
package:
	make build
	zip awesome-website.zip dist/
