# Auto Configure Development Environment in Ubuntu
This script is used to setup developer tools on a fresh install of Ubuntu.

## Install git on your system:

```
$ sudo apt-get install git
```

## Clone this repo:

```
$ git clone https://github.com/dchess/dev-env-setup.git
```

## Run the master script:

```
$ ./master.sh
```

This will install the following (in order):

- VIM (with NERDTree, NERDCommenter, CtrlP, and Vim ColorSchemes)
- overwrite  vimrc and set terminal colorscheme
- add git config and aliases
- ruby, rails, and nodeJS
- heroku toolbelt
- postgres
- overwrite bashrc
