This is not the repository you're looking for
=============================================

If you got here from NPM, go Back, and then click the **Homepage** link instead.

This is a repository containing only a GitHub Action for publishing arbitrary
packages to NPM.  Unfortunately the new, stricter, NPM publishing requirements
no longer allow trivial deployments, so the options are to either copy and paste
the exactly same `.github/workflows` folder into hundreds of repositories, or
set up a single repository such as this (which, unfortunately, requires setting
each package's `repository` URL in package.json to point back at it to actually
allow publishing).

If you know a better way, or want instructions setting up the same for your
repositories, feel free to reach out to me at `jimb.ly` on Discord.

Notes to self for use:
* Always first check with `npm publish --dry-run`
* To set up a new project (requires getting a OTP 4 times -\_-, fewer if you're quick):
  * Set the `homepage` to the GitHub repository and `repository` in the project's package.json like so:
```json
  "homepage": "https://github.com/Jimbly/some-project-name",
  "repository": {
    "type": "git",
    "url": "git+https://github.com/Jimbly/npm-publish.git"
  },
```
  * Publish once manually `npm login` and `npm publish --access=public`
  * Visit `https://www.npmjs.com/package/some-project-name/access`
    * Select `GitHub Actions`
    * Put in `Jimbly` / `npm-publish` / `publish.yml`
    * Click `Set up connection`
  * Bump version number and then test publishing
* Run `npm-publish` in the project's directory
