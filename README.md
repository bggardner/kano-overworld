Story Mode
===============
[Story Mode](https://kanocomputing.ghost.io/discover-how-your-computer-works-with-story-mode/) is an adventure game found on the abandoned Kano OS that teaches about the components and workings of a Raspberry Pi.

Background
==========
While many Kano applications are posted on [their GitHub page](https://github.com/KanoComputing), Story Mode is not.  However, the Debian Stretch package is available at [here](http://dev.kano.me/archive-stretch/pool/main/k/kano-overworld/kano-overworld_4.3.1-0-0.20190813build3_all.deb).  The `.deb` installs a [LÖVE](https://love2d.org/) application called `kanoOverworld.love`.  The `.love` file is simply a ZIP archive containing the source code, which is the initial commit of this repository.  The Kano developers apparently cloned [this repo](https://github.com/EmmanuelOga/easing) as a starting point, then began writing Story Mode without changing the README.

Installation
============
The code currently does not run with LÖVE 11+, so we have to compile the source of 10.2 (the `make` step takes a while).  Referencing the instructions [here](https://love2d.org/wiki/Building_L%C3%96VE) and [here](https://www.love2d.org/wiki/Game_Distribution#Linux), do the following:
```
sudo apt update
sudo apt upgrade
sudo apt-get install build-essential autotools-dev automake libtool pkg-config libfreetype6-dev libluajit-5.1-dev libphysfs-dev libsdl2-dev libopenal-dev libogg-dev libvorbis-dev libmodplug-dev libmpg123-dev libtheora-dev zip
cd ~
git clone https://github.com/love2d/love.git
cd love
git checkout 0.10.2
sed -i "s/ luaL_reg / luaL_Reg /g" src/libraries/luasocket/libluasocket/*
/platform/unix/automagic
./configure
make
sudo ln -s ~/love/src/love /usr/bin/love
cd ..
git clone https://github.com/bggardner/kano-overworld.git`
cd kano-overworld
zip -9 -r kanoOverworld.love . -x ./.git\*
```

The goal is to modify this repository to simplify installation to this, using the Raspberry Pi OS package for LÖVE:
```
sudo apt update
sudo apt upgrade
sudo apt install love zip
git clone https://github.com/bggardner/kano-overworld.git
cd kano-overworld
zip -9 -r kano-overworld.love . -x ./.git\*
```
Usage
=====
`love ~/kano-overworld/kanoOverworld.love`
