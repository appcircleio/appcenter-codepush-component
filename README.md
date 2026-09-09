# DEPRECATED

[![No Maintenance Intended](https://unmaintained.tech/badge.svg)](https://unmaintained.tech/)

> ⛔️ **DEPRECATED - this component is no longer maintained.**
>
> Microsoft retired Visual Studio App Center (including App Center CodePush) on 31 March 2025, so
> this component can no longer reach a live service. The repository stays online for historical
> reference only: it receives no updates, no bug fixes and no security patches, and issues and
> pull requests are not reviewed.
>
> **Use [Appcircle CodePush](https://docs.appcircle.io/code-push/) instead.**

## What to use instead

- **Over-the-air React Native updates** - [Appcircle CodePush](https://docs.appcircle.io/code-push/),
  which covers the same flow with its own SDK, CLI and code signing.

## No warranty

This code is provided as is, with no warranty and no support. See [LICENSE](./LICENSE) for the full
disclaimer. Using it against any remaining App Center endpoint is entirely at your own risk.

---

## Archived documentation

Everything below describes the component as it was at the time of deprecation. It is kept for
reference only and is not maintained.

### Appcircle _App Center CodePush_ component

Release a React Native update to App Center CodePush.

#### Required Inputs

- `AC_APPCENTER_TOKEN`: API Token. App Center API Token.
- `AC_APPCENTER_OWNER`: Owner Name. Owner of the app. The app's owner can be identified in its URL, such as `https://appcenter.ms/users/JohnDoe/apps/myapp` for a user-owned app (where **JohnDoe** is the owner) and `https://appcenter.ms/orgs/Appcircle/apps/myapp` for an org-owned app (owner is **Appcircle**).
- `AC_APPCENTER_APPNAME`: App Name. The name of the app. The app's name can be identified in its URL, such as `https://appcenter.ms/users/JohnDoe/apps/myapp` for a user-owned app (where **myapp** is the app name) and `https://appcenter.ms/orgs/Appcircle/apps/myapp` for an org-owned app (owner is **myapp**).

#### Optional Inputs

- `AC_APPCENTER_PRIVATE_KEY`: Private Key. App Center Private Key to sign updates. Upload your private key(.pem) to environment variables as a file and set its name as `AC_APPCENTER_PRIVATE_KEY`
- `AC_PROJECT_PATH`: Project Path. Relative path of the React Native project. Leave it empty to use the parent repository path.
- `AC_APPCENTER_DESCRIPTION`: Description. This parameter provides an optional change log for the deployment.
- `AC_APPCENTER_DEPLOYMENT`: Deployment Name. This parameter specifies which deployment you want to release the update to. It defaults to `Staging`.
- `AC_APPCENTER_ROLLOUT`: Rollout Percentage. This parameter specifies the percentage of users (as an integer between 1 and 100) that should be eligible to receive this update
- `AC_APPCENTER_VERSION`: App Center CLI Version. The latest version will be used if no version is set.
- `AC_APPCENTER_EXTRA`: Extra arguments. Extra command line arguments for appcenter. For example, add `--debug` for verbose logs.
