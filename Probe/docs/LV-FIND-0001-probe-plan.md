# LV-FIND-0001 Probe Plan

## Finding

`Atlas/findings/LV-FIND-0001-vimage-rgba-baseline.md`

## Goal

Determine what Leopard-native vImage already provides for common RGBA pixel
operations before considering custom AltiVec kernels.

## Phase 1: Header Inventory

Inspect the Leopard 10.5.8 Accelerate and vImage headers on real PowerPC
hardware.

Questions:

- Which vImage headers are present?
- Which ARGB/RGBA/BGRA functions are declared?
- Which premultiply and unpremultiply functions exist?
- Which scale and convert functions exist?
- Which functions are documented through local man pages or ADC docs?

## Phase 2: Minimal Scalar Reference

Create a small scalar C reference for one operation first.

Initial candidate:

- ARGB8888 premultiply

## Phase 3: vImage Baseline

Create the equivalent vImage implementation if Leopard provides the required
API.

## Phase 4: Correctness Check

Compare scalar and vImage output byte-for-byte where possible.

If exact equality is not expected, define a tolerance before benchmarking.

## Phase 5: Benchmark

Measure scalar C and vImage on real Leopard/PPC hardware.

No custom AltiVec kernel is allowed before the native baseline is measured.

## Status

Open.
