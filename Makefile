.PHONY: .all
.all: venv

venv: requirements.txt
	bash -c '\
		python3 -m venv venv \
		&& venv/bin/pip install -r requirements.txt \
	' || rm -rf venv

.PHONY: clean
clean:
	rm -rf venv
