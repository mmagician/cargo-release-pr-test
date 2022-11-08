release:
ifndef VERSION
	$(error VERSION is not set. Run with `make VERSION=<version> release`)
endif
	git pull
	cargo update
	git tag $(VERSION) 
	# push the tag
	git push origin $(VERSION)
	cargo release publish --execute --verbose --allow-branch "main"