# Build


## Overview

First container with build dependencies is built.
Next this container is used to build Python from sources.
`Dockerfile-build` prepares environment for building process. `Dockerfile-run` is for runtime.

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


# Runtime

## Building runtime environment
Example:
```
docker build --tag pyrun:0.0.1 -f Dockerfile-build .
```

## Running

Note:
* mount your repository on `/repos`
* mount Python installation on `/data`

Container crafted to run Python build in #Build step.

Example:

```
docker run --name PyRun -v c:\dev\docker_volume:/data:ro -v c:\dev:/repos -it pyrun:0.0.1
```

Helper script `helper_venv.sh` is prepered to spin up Python's `venv`. This script is meant to run once after container is created.