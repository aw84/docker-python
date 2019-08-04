# Build

Example:
```
docker build --tag pydev:0.0.1 -f Dockerfile-build .
```

## Run Python build in a container

Notes:
 * review `build_python.sh`
 * put Python's TGZ on volume reachable from container
 * adjust paths to your environment

Example:
```
docker run --name PyBuild -v c:\dev\docker_volume:/data -t pydev:0.0.1 /data/build_python.sh
```
