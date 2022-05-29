#!/usr/bin/bash
podman build -t clang:latest .
podman run --rm -it --name clang --privileged --ulimit=host --ipc=host --cgroups=disabled --security-opt label=disable --userns=keep-id --hostname $(hostname) --mount type=tmpfs,tmpfs-size=200G,destination=/build -v $(pwd):/src clang:latest
