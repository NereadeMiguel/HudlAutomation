.PHONY: clean install run headless

install:
	pip install -r requirements.txt

run:
	robot  --variable ENVIRONMENT:prod  --variable BROWSER_MODE:real --variable BROWSER:chrome  ./e2e

run-headless:
	robot  --variable ENVIRONMENT:prod  --variable BROWSER_MODE:headless --variable BROWSER:chrome  ./e2e
