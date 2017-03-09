# shell-autostart

## How to install:

```
cd ~
git clone https://github.com/HexagramDev/shell-autostart.git .shell-autostart
```

## Add to ~/.bashrc or ~/.bash_profile:

``source ~/.shell-autostart/shell-autostart.sh``

## Usage:

Create file named ``.autostart`` in some directory and put there bash commands, aliases, exports, etc

You can set Your own autostart file using ENV variable:

```
AUTOSTART_FILE=.autexec
source ~/.shell-autostart/shell-autostart.sh
```
