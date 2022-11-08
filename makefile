release:
	# Run with `make release VERSION=<version>`
	git pull
	cargo update
	git tag $(VERSION) 
	# push the tag
	git push origin $(VERSION)
	cargo release publish --execute --verbose --allow-branch "main"