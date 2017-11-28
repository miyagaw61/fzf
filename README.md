<img src="https://raw.githubusercontent.com/junegunn/i/master/fzf.png" height="170" alt="fzf - a command-line fuzzy finder"> [![travis-ci](https://travis-ci.org/junegunn/fzf.svg?branch=master)](https://travis-ci.org/junegunn/fzf) [![Donate via PayPal](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=EKYAW9PGKPD2N)
===

fzf2nd is a general-purpose command-line fuzzy finder for bash.

<img src="https://raw.githubusercontent.com/junegunn/i/master/fzf-preview.png" width=640>

It's an interactive Unix filter for command-line that can be used with any
list; files, command history, processes, hostnames, bookmarks, git commits,
etc.

Installation
------------

at first, install ripgrep from [here](https://github.com/BurntSushi/ripgrep/releases) or the following commnads.

```sh
curl -L https://static.rust-lang.org/rustup.sh | sudo sh
cargo install ripgrep
```

second, clone this repository and run install script.

```sh
git clone https://github.com/miyagaw61/fzf2nd.git ~/.fzf
~/.fzf/install
```

Upgrading fzf2nd
-------------

```
cd ~/.fzf && git pull && ./install
```

Usage - fzf2nd's new functions
-----

fzf will launch interactive finder, read the list from STDIN, and write the selected item to STDOUT.  
type `foo` can search 'foo' with ambiguous match.  
type `'foo` can search 'foo' with exact match.  
type `<Tab>` can multiple select.  
`<C-o>` can auto ` | fzf2nd` injection.(`<C+o>` is `CTRL`+`O`)  

```sh
find | fzf2nd > selected
vim $(find /etc -type f | fzf2nd)
```

`<C+j>` can find current directory (depth=1)  

```sh
vim <C+j>
```

`<C+k>` can find current directory (depth=∞)

```sh
vim <C+k>
```

`,<Tab>` can grate completion

![completion](https://i.imgur.com/n7gyYR0.png)

cd with fzf2nd

```sh
fzf_d
```

![fzf_d1](https://i.imgur.com/QtUDpQ2.png)
![fzf_d2](https://i.imgur.com/SnMNZph.png)

you can use fzf2nd in shell script.  

```sh
arg=$(find -type f | fzf2nd)
set $arg
echo selected num : $#
echo selected factors : $@
echo selected factor1 : $1
```

you can this shell script by `fzf2nd_example.sh`.

![example1](https://i.imgur.com/gwYjmC2.png)  
![example2](https://i.imgur.com/C6a2yCk.png)

fzf default README.md
---------------------

https://github.com/junegunn/fzf


[License](LICENSE)
------------------

The MIT License (MIT)

Copyright (c) 2017 Junegunn Choi
