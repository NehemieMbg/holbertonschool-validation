#generates the website
build:
	hugo
clean:
	rm -rf dist/*
post:
	hugo new content/posts/$(POST_NAME).md
# -i option to edit file in place
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
