# AltiVec Intimate Details Map

This document maps AltiVec at the instruction-pattern level.

The goal is not to write kernels immediately.

The goal is to understand the computational grammar of AltiVec deeply enough
to decide when Accelerate.framework is sufficient, when external code maps are
useful, and when a small custom kernel is justified.

## Core Pattern Families

- Vector data types and 16-byte alignment.
- Load, store, and unaligned access.
- Permute and byte-lane surgery.
- Merge, pack, unpack, and interleave.
- Saturating integer arithmetic.
- Fixed-point multiply-add patterns.
- Floating-point multiply-add patterns.
- Reciprocal and reciprocal-square-root estimates.
- Compare, mask, and select operations.
- Cache and streaming behavior.
- Scalar tail handling.
- Runtime dispatch and fallback rules.

## Rule

A LeoVec kernel must never exist just because AltiVec can do something.

A LeoVec kernel exists only when the Atlas proves that the native Leopard path
is missing, insufficient, too generic, or measurably slower for a relevant
PowerPC workload.

