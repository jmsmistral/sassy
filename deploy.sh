#!/usr/bin/env bash

# This script deploys sassy lang to PyPi
python setup.py develop
python setup.py sdist
python setup.py bdist_wheel
#twine check dist/*
twine upload --repository-url https://test.pypi.org/legacy/ --username $TWINE_USERNAME --password $TWINE_PASSWORD dist/*
twine upload --username $TWINE_USERNAME --password $TWINE_PASSWORD dist/*