# Accelerate Map Index

This directory maps Accelerate.framework as the Leopard-native baseline.

LeoVec must understand Accelerate before proposing custom AltiVec kernels.

## Planned Maps

- `10-vimage-map.md`
- `20-vdsp-map.md`
- `30-veclib-blas-lapack-map.md`
- `40-vforce-vmathlib-map.md`
- `50-vbasicops-map.md`
- `60-vbignum-map.md`

## Rule

Accelerate first.
External source maps second.
Custom kernels last.

