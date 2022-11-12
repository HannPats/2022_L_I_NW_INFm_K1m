deps:

	pip install -r requrements.txt
	
	pip install -r test_requirements.txt
	
int:

	flake8 hello_world test
	
.PHONY: test
test: 

		PYTHONPATH=. py.test --verbose -s
		
run:

	python main.py

docker-build:

	docker build -t hello-world-printer
