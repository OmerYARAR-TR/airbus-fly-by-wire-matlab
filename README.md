# airbus-fly-by-wire-matlab

## Generating the source code

Change to the root directory and place the following commands:

```bash
matlab -batch "targetVersion='<MATLAB Release>'; run('scripts/prepare.m');"
matlab -batch "target='<grt|ert>'; run('scripts/generate.m');"
```
