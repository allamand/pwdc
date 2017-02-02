


clean:
	find . -name *.pyc -exec rm -rf {} \;
	sudo rm -rf .cache .coverage *.egg-info build dist


install:
	sudo pip install -e .[test]


test:
	python setup.py test


release:
	sudo python setup.py sdist bdist_wheel
	twine upload dist/*
