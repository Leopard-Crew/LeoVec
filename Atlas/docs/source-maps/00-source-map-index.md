# LeoVec Source Maps

This directory contains source-level maps of existing AltiVec, SIMD,
Accelerate, media, browser, crypto, mesh, and numerical codebases.

Source maps are not adoption decisions.

Each map answers:

1. What computational domain does this source cover?
2. Which hot paths are relevant to Leopard/PPC?
3. Which parts are already handled by Accelerate.framework?
4. Which parts expose reusable AltiVec patterns?
5. Which parts are unsafe, too specific, obsolete, or out of scope?
6. Which scalar reference tests would be required before reuse?

Current maps:

- `10-ffmpeg-swscale-map.md` — YUV/RGB conversion, scaling, pixel packing.
- `20-libjpeg-turbo-map.md` — JPEG SIMD acceleration candidates.
- `30-qcms-map.md` — browser color-management acceleration candidates.
