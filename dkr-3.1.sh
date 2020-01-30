#!/bin/bash

echo "my dotnet docker"
docker run -it --rm  --name mydot \
        --user root \
	-v $(pwd):/mnt/work  -w /mnt/work \
        mcr.microsoft.com/dotnet/core/sdk:3.1 \
	/bin/bash

# after entering dotnet docker container
# run ./adduser1000.sh
# elf$ cd /mnt/work
# elf$ ./make.ps1 debug
