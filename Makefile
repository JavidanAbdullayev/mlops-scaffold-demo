# Makefile
.PHONY: install lint test format all

install:
	pip install --upgrade pip && \
		pip install -r requirements.txt

lint:
	# disable pylint Refactor/Convention like the book for a clean start
	pylint --disable=R,C src/*.py

test:
	python -m pytest -vv --cov=src --cov-report=term-missing

format:
	# isort first, then black
	isort src tests
	black src tests

all: install format lint test