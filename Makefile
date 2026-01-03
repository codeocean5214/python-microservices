.PHONY: install lint test format deploy all

install:
	@echo "Installing dependencies"
	pip install --upgrade pip
	pip install -r requirements.txt

lint:
	@echo "Running lint checks"
	ruff check .

test:
	@echo "Running tests"
	pytest -v

format:
	@echo "Checking code format"
	black --check .

deploy:
	@echo "Deploy step placeholder (AWS later)"
	# Example: docker build / push / terraform apply

all: install lint test format
