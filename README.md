# cookie-monitoring

This repository is a project template for building automated session revocation
base on Flare's [Cookie Monitoring API](https://api.docs.flare.io/guides/cookie-monitoring).

It implements a script that goes through the following steps:
1. Fetch new leaked cookies.
2. Validate them.
3. Revoke the ones that are still valid.
4. Save the cursor for the next run.


## Simple Local Usage

**1 - Export your Flare API Key and Tenant Id**
```shell
export FLARE_API_KEY="api-key-here"
export FLARE_TENANT_ID="tenant-id-here"
```

**2 - Run the script**
```shell
make run
```

## From POC to production

For this to be production-grade, you will want to modify
the default implementations of the following methods:
- `get_cursor`
- `save_cursor`
- `verify_cookie`
- `invalidate_cookie`
