VENV := "venv-cc-fastapi"
test:
	python -m pytest -vv

format:
	black .
	isort .
	flake8

venv:
	pyenv virtualenv 3.10.2 ${VENV} && make activate-venv && make install-local

activate-venv:
	pyenv local ${VENV}

install:
	pip install -r requirements/base.txt

install-local:
	pip install -r requirements/extra.txt

pre-commit:
	pre-commit install
