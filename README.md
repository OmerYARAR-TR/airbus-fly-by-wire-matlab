# airbus-fly-by-wire-matlab

## Generating the source code

Change to the root directory and place the following commands:

```bash
matlab -batch "targetVersion='R2019b'; run('scripts/prepare.m');"
matlab -batch "run('scripts/generate.m');"
```
