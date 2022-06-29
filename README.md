# mcp1.8.9op
A fixed mcp workspace configured for 1.8.9 integrated with optifine and setup with a single `setup.(bat|sh)` executable.

## Setup

### Run `setup.bat` or `setup.sh`
> setup.sh for Linux might have some issues. I cannot test it however as I do not possess a Linux envinroment.

What this will do:
1. Decompile minecraft, which will fail at recompiling.
2. Fix a source bug where a variable name is incorrectly written.
3. Recompile minecraft correctly.
4. Remove minecraft's source code and replace it with optifine's.

What you get at the end:
- A (hopefully) bugless mcp 1.8.9 workspace with optifine pre-installed.

## IntelliJ
[Setup, run and export MCP 1.8.9 with Optifine in IntelliJ](https://youtu.be/hHBO6sp6NiI)

## Eclipse
I don't use Eclipse