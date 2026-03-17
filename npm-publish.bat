@CALL C:\UserData\Keys\github-npm-publish.bat

@REM Determine repository from `homepage` link in package.json

@FOR /F "tokens=*" %%I IN ('node -e "console.log(JSON.parse(require('fs').readFileSync('package.json')).homepage.match(/Jimbly\/(.*)/)[1])"') DO @SET "PKG=%%I"
@if ERRORLEVEL 1 (
  @echo Error parsing "homepage" from package.json in the current directory
  @exit /b 1
)
@echo Publishing from repository "Jimbly/%PKG%"

@curl -H "Accept: application/vnd.github+json" -H "Authorization: Bearer %GHTOKEN%" -H "X-GitHub-Api-Version: 2026-03-10" https://api.github.com/repos/Jimbly/npm-publish/actions/workflows/publish.yml/dispatches -d {\"ref\":\"master\",\"inputs\":{\"repository\":\"Jimbly/%PKG%\"}}
