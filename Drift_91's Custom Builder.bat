@echo off
cd /d "%~dp0"

echo Cleaning and resetting repository...
git clean -fdxq && git reset --hard

echo Clearing cache and starting Gradle...
gradlew.bat cleanCache --no-daemon && gradlew.bat applyPatches --no-daemon && gradlew.bat createReobfPaperclipJar --no-daemon

pause
