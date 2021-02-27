# Building

## Preparation

Put Python sources in `Python-src/` folder.

## Build image

Following command will install dependencies, build and install Python binaries.

```
docker build --build-arg PYTHONVERSION=3.9 --tag pydev:0.0.1 -f Dockerfile .
```
