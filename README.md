# 🧱 Electron Base
> This repository is just for myself so i dont have to copy or create a electron project from the start.

![Static Badge](https://img.shields.io/badge/NPM%20Version-10.7.0-green)
![Static Badge](https://img.shields.io/badge/Electron%20Version-v31.1.0-blue)

## Automatically
Download the script clone_and_setup.bat and run it (currently not properly tested)

## Manually
Clone the repository without checking out
```
git clone --no-checkout https://github.com/quentintyr/electronBomb.git
```
Navigate to the hooks hirectory
```
cd <clone-location>/electronBomb/.git/hooks
```
Disable the file
```
ren post-checkout post-checkout.disabled
```

Or delete the file
```
del post-checkout
```
```
git checkout .
```
