.PHONY: help init clean test
.DEFAULT_GOAL := help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init: ## init python
	@pipenv install

clean: ## clean
	@pipenv --rm

test: ## call with make swagger ID=<rest_api_id>
	@pipenv run pytest -s -v
