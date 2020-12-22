
.PHONY: build publish clean

## build		: Build the tarball
build:
	ansible-galaxy collection build --force

## clean		: Clean up the build
clean:
	rm *.tar.gz

## publish	: Publish the tarball
publish:
	ansible-galaxy collection publish --api-key $ANSIBLE_TOKEN *.tar.gz

## help		: Show help
help: Makefile
	@sed -n 's/^##//p' $<

default: build
