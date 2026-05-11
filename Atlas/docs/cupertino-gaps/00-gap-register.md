# Cupertino Gap Register

This register tracks possible gaps between AltiVec capability, Leopard-native
Accelerate coverage, observable Apple usage, and measured custom alternatives.

## Columns

| ID | Domain | AltiVec capability | Leopard-native API | Observed Apple use | Gap type | Evidence level | Next test |
|----|--------|--------------------|--------------------|--------------------|----------|----------------|-----------|

## Gap Types

- Missing API
- API exists but too generic
- API exists but lacks required data layout
- API exists but has too much conversion overhead
- API exists but benchmark is slower than a dedicated kernel
- Unknown / needs measurement

