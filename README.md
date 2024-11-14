# cookie-monitoring

This repository is a project template for building automated session revocation
base on Flare's [Cookie Monitoring API](https://api.docs.flare.io/guides/cookie-monitoring).

It implements a script that goes through the following steps:
- Fetch new leaked cookies.
- Validate them.
- Revoke the ones that are still valid.
- Save the cursor for the next run.
