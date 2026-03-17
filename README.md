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
