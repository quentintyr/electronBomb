@echo off
setlocal

:: Ensure repository URL is provided
if "%~1"=="" (
    echo Please provide a repository URL.
    exit /b 1
)

:: Ensure repository name is provided
if "%~2"=="" (
    echo Please provide a repository name.
    exit /b 1
)

set "REPO_URL=%~1"
set "REPO_NAME=%~2"

:: Clone the repository without checking out
echo Cloning repository...
git clone --no-checkout %REPO_URL% %REPO_NAME%

:: Navigate to the hooks directory
cd %REPO_NAME%/.git/hooks

:: Disable or delete the post-checkout hook
if exist post-checkout (
    echo Disabling post-checkout hook...
    ren post-checkout post-checkout.disabled
    :: To delete instead, uncomment the next line and comment out the rename command above
    :: del post-checkout
)

:: Checkout the code
cd ../..
git checkout .

echo Done.
endlocal