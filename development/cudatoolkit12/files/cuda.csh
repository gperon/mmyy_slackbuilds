#!/bin/csh
setenv CUDA_PATH /opt/cuda
setenv PATH ${PATH}:/opt/cuda/bin:/opt/cuda/nsight_compute:/opt/cuda/nsight_systems/bin
# Set the default host compiler for nvcc. This will need to be switched back
# and forth between the latest and previous GCC version, whatever nvcc
# currently supports.
setenv NVCC_CCBIN='/usr/bin/g++'