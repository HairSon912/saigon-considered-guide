@echo off
cd /d "%~dp0"
echo Starting the Saigon visitor guide at http://localhost:8000
echo Keep this window open while using the site. Press Ctrl+C to stop the server.
py -m http.server 8000
pause
