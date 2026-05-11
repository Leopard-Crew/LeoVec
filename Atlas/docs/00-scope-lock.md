## Research Ethic

LeoVec is digital archaeology, not an indictment of Apple.

Mac OS X 10.5.8 is the final PowerPC release of Mac OS X. For that reason,
LeoVec treats the remaining Leopard/PPC system as a fixed historical artifact:
not to blame it, not to replace it, but to understand how completely its
available computational resources can still be exposed, mapped, and used.

Claims about unused, underused, or suboptimal AltiVec behavior must be phrased
as observations, hypotheses, or benchmarked findings.

LeoVec does not ask:

"Why did Apple fail to do this?"

LeoVec asks:

"What does the hardware provide, what does Leopard expose, what does the system
appear to use, and what can still be proven useful today?"

**LeoVec is not a replacement for Accelerate.framework.**

LeoVec first maps what Leopard/PPC already provides through Accelerate,
vImage, vDSP, BLAS and related system facilities. Custom AltiVec kernels
are only justified where Leopard provides no sufficient native facility
or where a project-specific hot path requires a small, testable kernel.

