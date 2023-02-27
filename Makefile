setup:
	python3 -m venv ~/venv/.devops
	
install:
	pip install --upgrade pip &&\
    pip install -r requirements.txt --trusted-host pypi.python.org

lint:
	pylint --disable=R,C,W1203 app.py
	hadolint Dockerfile
	
all: setup install lint