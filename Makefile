DUMMY: lint test

lint:
	flake8 gt3x tests
	mypy gt3x

test:
	pytest
