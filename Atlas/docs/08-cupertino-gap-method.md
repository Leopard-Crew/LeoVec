# Cupertino Gap Method

LeoVec does not assume that Apple failed to use AltiVec.

LeoVec investigates observable gaps between:

1. What AltiVec can do.
2. What Mac OS X 10.5.8 exposes through Accelerate.framework.
3. What Leopard applications and frameworks appear to use.
4. What external AltiVec codebases demonstrate.
5. What measured scalar, Accelerate, and custom AltiVec kernels show.

## Evidence Levels

- Level A: Capability exists in AltiVec.
- Level B: Capability is exposed through Accelerate or another Leopard-native API.
- Level C: Capability is visibly used by a Leopard framework or application.
- Level D: Capability appears unused or unavailable.
- Level E: A reproducible benchmark shows a better implementation is possible.

No claim about unused or suboptimal Apple behavior is valid without an evidence level.

