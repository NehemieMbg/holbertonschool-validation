
help: ## showing help documentation
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
build:		## Generates the website from the markdown and configuration files (inside dist/)
	hugo
clean:		## Cleanup the content of the directory dist/
	rm -rf dist/*
post:		## Create a new blog post whose filename and title come from env var POST_TITLE and POST_NAME
	hugo new content/posts/$(POST_NAME).md
# -i option to edit file in place.
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
