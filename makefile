

deploy:
	rm -r build && rm -r dist && rm -r fuck_game.egg-info || true
	python setup.py sdist bdist_wheel
	python -m twine upload dist/*
	

.PHONY: deploy