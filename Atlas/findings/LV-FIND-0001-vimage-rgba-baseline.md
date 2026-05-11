# LV-FIND-0001: vImage RGBA Baseline

## ID

`LV-FIND-0001`

## Domain

Image / Pixel

## Question

What does Leopard-native vImage already cover for common RGBA pixel operations?

## Observation

RGBA, ARGB, BGRA, alpha, scaling, and channel-layout operations are common hot
paths in Leopard/PPC workloads such as image tools, browser rendering, video
frame preparation, thumbnails, screenshots, and UI compositing.

Before LeoVec considers custom AltiVec kernels for these operations, the native
Leopard vImage baseline must be mapped and measured.

## Candidate Workloads

- RGBA premultiply
- RGBA unpremultiply
- ARGB/RGBA/BGRA channel layout conversion
- Scaling
- Basic alpha blend / composite
- Clamp / pack / unpack operations

## AltiVec Capability

Relevant AltiVec pattern families may include:

- Byte permute
- Merge / pack / unpack
- Saturating arithmetic
- Fixed-point arithmetic
- Vector load/store
- Alignment handling
- Scalar tail handling

## Leopard Native Baseline

Primary baseline:

- Accelerate.framework
- vImage

Secondary native context:

- CoreGraphics
- Quartz
- QuickTime image/video handoff paths where relevant

## External Evidence

Potential source maps:

- `Atlas/docs/source-maps/10-ffmpeg-swscale-map.md`
- `Atlas/docs/source-maps/40-accelerate-vimage-map.md`
- `Atlas/docs/patterns/00-altivec-pattern-catalog.md`

## Hypothesis

vImage may already cover many image and pixel hot paths well enough that custom
LeoVec AltiVec kernels are unnecessary for general RGBA operations.

Custom kernels may only be justified if vImage is missing a required operation,
requires too much conversion overhead, or is measurably slower for a relevant
Leopard/PPC workload.

## Risk

- Incorrect alpha handling
- Incorrect channel order
- Precision differences
- Alignment assumptions
- Benchmarking artificial workloads instead of real Leopard/PPC paths

## Required Test

1. Build a scalar C reference for each candidate workload.
2. Build a vImage implementation where Leopard provides an API.
3. Optionally build a minimal AltiVec test kernel only after the vImage baseline
   is understood.
4. Compare correctness.
5. Compare performance on real PowerPC hardware.
6. Record whether a Cupertino Gap Register entry is justified.

## Evidence Level

Initial: Level A/B candidate.

No claim about unused or suboptimal Apple behavior is made yet.

## Status

Open.

