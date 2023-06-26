@echo off
cd /d "%~dp0"

echo Cleaning and resetting repository...
git clean -fdxq && git reset --hard

echo Clearing Gradle cache...
gradlew.bat cleanCache --no-daemon

echo Starting gradle...
gradlew.bat applyPatches --no-daemon && gradlew.bat createReobfPaperclipJar --no-daemon

pause
