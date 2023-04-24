# Appcircle _App Center CodePush_ component

Release a React Native update to App Center CodePush.

## Required Inputs

- `AC_APPCENTER_TOKEN`: API Token. App Center API Token.
- `AC_APPCENTER_OWNER`: Owner Name. Owner of the app. The app's owner can be identified in its URL, such as `https://appcenter.ms/users/JohnDoe/apps/myapp` for a user-owned app (where **JohnDoe** is the owner) and `https://appcenter.ms/orgs/Appcircle/apps/myapp` for an org-owned app (owner is **Appcircle**).
- `AC_APPCENTER_APPNAME`: App Name. The name of the app. The app's name can be identified in its URL, such as `https://appcenter.ms/users/JohnDoe/apps/myapp` for a user-owned app (where **myapp** is the app name) and `https://appcenter.ms/orgs/Appcircle/apps/myapp` for an org-owned app (owner is **myapp**).

## Optional Inputs

- `AC_APPCENTER_PRIVATE_KEY`: Private Key. App Center Private Key to sign updates. Upload your private key(.pem) to environment variables as a file and set its name as `AC_APPCENTER_PRIVATE_KEY`
- `AC_PROJECT_PATH`: Project Path. Relative path of the React Native project. Leave it empty to use the parent repository path.
- `AC_APPCENTER_DESCRIPTION`: Description. This parameter provides an optional change log for the deployment.
- `AC_APPCENTER_DEPLOYMENT`: Deployment Name. This parameter specifies which deployment you want to release the update to. It defaults to `Staging`.
- `AC_APPCENTER_ROLLOUT`: Rollout Percentage. This parameter specifies the percentage of users (as an integer between 1 and 100) that should be eligible to receive this update
- `AC_APPCENTER_VERSION`: App Center CLI Version. The latest version will be used if no version is set.
- `AC_APPCENTER_EXTRA`: Extra arguments. Extra command line arguments for appcenter. For example, add `--debug` for verbose logs.
