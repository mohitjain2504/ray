#!/usr/bin/env bash

# This script generate a ray C++ template and run example
set -e
rm -rf ray-template
ray cpp --generate-bazel-project-template-to ray-template
(
    cd ray-template
    USE_BAZEL_VERSION=5.4.1 bash run.sh
)
