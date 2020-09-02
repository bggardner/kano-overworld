Story Mode
===============
[Story Mode](https://kanocomputing.ghost.io/discover-how-your-computer-works-with-story-mode/) is an adventure game found on the abandoned Kano OS that teaches about the components and workings of a Raspberry Pi.

Background
==========
While many Kano applications are posted on [their GitHub page](https://github.com/KanoComputing), Story Mode is not.  However, the Debian Stretch package is available at [here](http://dev.kano.me/archive-stretch/pool/main/k/kano-overworld/kano-overworld_4.3.1-0-0.20190813build3_all.deb).  The `.deb` installs a [LÖVE](https://love2d.org/) application called `kanoOverworld.love`.  The `.love` file is simply a ZIP archive containing the source code, which is the initial commit of this repository.  The Kano developers apparently cloned [this repo](https://github.com/EmmanuelOga/easing) as a starting point, then began writing Story Mode without changing the README.

Installation
============
```
sudo apt update
sudo apt upgrade
sudo apt install love zip
git clone https://github.com/bggardner/kano-overworld.git
cd kano-overworld
zip -9 -r kanoOverworld.love . -x ./.git\*
```
Usage
=====
`love ~/kano-overworld/kanoOverworld.love`
