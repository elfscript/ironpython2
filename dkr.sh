#!/bin/bash

echo "my dotnet docker"
docker run -it --rm  --name mydot \
        --user root \
	-v $(pwd):/mnt/work  -w /mnt/work \
        mcr.microsoft.com/dotnet/core/sdk:3.0 \
	/bin/bash
