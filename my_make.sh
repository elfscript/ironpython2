#!/bin/bash
# dotnet msbuild  Build.proj /nologo /bl:build-Build-Release.binlog /m /p:Configuration=Release /p:Platform=Any CPU /t:Build /verbosity:minimal

target="Build"
configuration="Release"
tgtFramework="netcoreapp2.1"

#dotnet msbuild Build.proj /m /t:$target /p:Configuration=$configuration \
#   /verbosity:minimal /nologo /p:Platform="Any CPU" \
#   /p:TargetFrameworkVersion=$tgtFramework \
#   /bl:build-$target-$configuration.binlog

dotnet build Build.proj   -c $configuration \
   -f $tgtFramework \
   -bl:build-$target-$configuration.binlog

