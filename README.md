# Dockerized version of pterrafile

https://github.com/claranet/python-terrafile

It allows to run cache Terraform modules from a Terrafile using Docker.

## Install (build)

```bash
docker build -t pterrafile .
```

## Usage

```bash

docker run --rm -it \
-v `pwd`:/app/ pterrafile pterrafile Terrafile
```

## Extend

To extend the libraries to include, just modify the Pipfile and run:

```bash
docker run --rm -v `pwd`:/app -e PIPENV_PIPFILE=/app/Pipfile kennethreitz/pipenv \
bash -c "pipenv lock -r > requirements.txt"
```

This will update the requirements.txt file and the Pipfile.lock.

Enjoy!