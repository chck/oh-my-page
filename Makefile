DATE:=$(shell date +"%Y-%m-%d-%H%M%S")

.PHONY: all
all: help

.PHONY: build ## build pages to publish
build: 
	hugo

.PHONY: help ## View help
help:
	@grep -E '^.PHONY: [a-zA-Z_-]+.*?## .*$$' $(MAKEFILE_LIST) | sed 's/^.PHONY: //g' | awk 'BEGIN {FS = "## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

