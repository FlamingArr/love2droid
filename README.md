# Love2Droid, make .apk from .love "on" github

**You will just upload your game.love file, do some configuration, wait a minute or two and download the generated signed or unsigned apk!**

## Step by step guide :
* Fork this repository and perform the next steps in the forked repo.
* Replace the game.love file in buildData with your own (it must be named game.love).
* Edit the config.lua file in buildData (the file itself contains info on how to edit it).
* In .github/worksflows create a new file named "build.yml" and copy paste the contents of main.yml
* Goto actions tab and click on the topmost action.
* Wait until it finishes.
* Now from the artifacts download the signed or unsigned apk.

## Signed vs Unsigned
* Unsigned : This apk is not signed, aka in debug mode, you can't install this without signing.
* Signed : It was created by signing the unsigned apk with uber.

**If anything breaks then please raise an issue**

**This uses the [apktool method](https://love2d.org/wiki/Game_Distribution/APKTool) of distributing love games to android and uses [uber apk signer](https://github.com/patrickfav/uber-apk-signer) to sign the apk**


**Todo :**
* Add icons support
* Add microphone permission handling
