@echo off
cd /d "%~dp0"

echo Cleaning and resetting repository...
git clean -fdxq && git reset --hard

echo Starting gradle...
gradlew.bat applyPatches --no-daemon && gradlew.bat createReobfPaperclipJar --no-daemon

pause
