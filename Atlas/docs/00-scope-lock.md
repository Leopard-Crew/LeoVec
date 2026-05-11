LeoVec is not a replacement for Accelerate.framework.

LeoVec first maps what Leopard/PPC already provides through Accelerate,
vImage, vDSP, BLAS and related system facilities. Custom AltiVec kernels
are only justified where Leopard provides no sufficient native facility
or where a project-specific hot path requires a small, testable kernel.

