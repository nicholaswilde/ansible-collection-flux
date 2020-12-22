
.PHONY: build publish

## build		: Build the tarball
build:
	ansible-galaxy collection build --force

## publish	: Publish the tarball
publish:
	ansible-galaxy collection publish --api-key $ANSIBLE_TOKEN *.tar.gz

## help		: Show help
help: Makefile
	@sed -n 's/^##//p' $<

default: build
