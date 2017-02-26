.PHONY: build
build: clean
	python3 setup.py sdist

.PHONY: clean
clean:
	rm -rf *.egg-info dist

.PHONY: install
install: build
	pip install dist/server50*.tar.gz
