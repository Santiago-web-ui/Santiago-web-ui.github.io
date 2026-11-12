@echo off
rem Opens the local site directly in Chrome or Edge.
rem Keep this file, index.html and the media folder together.
setlocal
set "SITE=%~dp0index.html"

if not exist "%SITE%" (
  echo Could not find index.html next to this launcher.
  pause
  exit /b 1
)

if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
  start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%SITE%"
  exit /b 0
)

if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
  start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "%SITE%"
  exit /b 0
)

if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" "%SITE%"
  exit /b 0
)

if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" "%SITE%"
  exit /b 0
)

start "" "%SITE%"
