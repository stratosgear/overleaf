# Makefile

SHARELATEX_BASE_TAG := sharelatex/sharelatex-base
SHARELATEX_TAG := sharelatex/sharelatex
SHARELATEX_FULL_TAG := sharelatex/sharelatex-full

build-base:
	docker build -f Dockerfile-base -t  $(SHARELATEX_BASE_TAG) .


build-community:
	docker build -f Dockerfile -t $(SHARELATEX_TAG) .


build-full:
	docker build -f Dockerfile-full -t $(SHARELATEX_FULL_TAG) .


PHONY: build-base build-community build-full
