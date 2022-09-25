# Define compilers for CUDA to use.
# This allows us to use older versions of GCC if we have to.
ln -sf usr/bin/gcc usr/share/cuda/bin/gcc 
ln -sf usr/bin/g++ usr/share/cuda/bin/g++
