# FAST Security Testing via Azure DevOps

[![Build Status](https://dev.azure.com/apetriv/FAST/_apis/build/status/FAST?branchName=master)](https://dev.azure.com/apetriv/FAST/_build/latest?definitionId=6&branchName=master)

This is an example of Wallarm FAST running security tests in the Azure DevOps pipeline. The target application is DVWA.

## How to reproduce example

1. Create your FAST node and get `WALLARM_API_TOKEN` here https://us1.my.wallarm.com/nodes
2. Fork this repository
3. Add project into Azure DevOps (first build will fail without `WALLARM_API_TOKEN`)
4. Add env-variable `WALLARM_API_TOKEN` in the project settings
5. Rerun build. It will find vulnerabilities

## Useful links

- More about Wallarm FAST: https://wallarm.com/products/fast
- More about Azure DevOps: https://docs.microsoft.com/en-us/azure/devops/
- DVWA application's source code: https://github.com/wallarm/fast-example-dvwa
- Full FAST documentation: https://docs.fast.wallarm.com

Try Wallarm FAST now: https://fast.wallarm.com/signup