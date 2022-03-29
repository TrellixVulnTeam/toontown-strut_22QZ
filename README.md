<img src="resources/phase_3/etc/icon.ico" align="right" width="200"/>

# Toontown Strut
A build of Toontown Stride, that just works.

# ❓ What is Toontown Strut
A variant of Toontown Stride and a Community Focused Toontown Server with hacky patches for the people to live the most ***high quality*** Toontown experience (according to the creator, NodeMixaholic.)

# Panda3d installation

## Windows
Pre-installed.

## macOS (if you wish to experiment with the code and/or run a server)
```
brew install --no-quarantine gcenx/wine/unofficial-wineskin
```
* Install latest 64bit engine
* Install latest wrapper
* Create a new wrapper.
* Open the app inside wrapper
* Click "Install app"
* Copy strut to the wrapper and choose Start.bat at next step
* Done!


## macOS (open-toontown method, if you just want to play)
[Panda3D Wheel for macOS 10.9+ (Python3.9, x86_64)](https://drive.google.com/file/d/1_6WJxrkNfwisK5pe5ubJJy1psEp0IIft/view?usp=sharing)

Installing the provided Panda3D wheel requires Python 3.9, which is not installed on your system by default whatsoever.  We recommend installing Python 3.9 through [Homebrew](https://brew.sh/) (Make sure that the xcode command line tools are installed first `xcode-select --install`): 
```shell
$ brew install python@3.9
```
(This will symlink Python 3.9 to `python3.9` and pip to `pip3`).

After installing Python 3.9.  You can then install the wheel by using pip:
```shell
$ pip install panda3d-1.11.0-cp39-cp39-macosx_10_9_x86_64.whl
```

## GNU/Linux

* Install "Bottles"
* Create a gaming bottle
* Copy strut folder to C drive
* Open WINE CMD
* CD into folder and run:
```
start Start
```

# credits

* https://github.com/OSToontown/ToontownStride-Py3 - original project
* people like you. thank you!
