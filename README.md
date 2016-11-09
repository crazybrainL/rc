# whlin's Mac OS X Guide

## Install List:
### Software
* [iterm2] - o
* Xcode - o 

### Package And Programming Language:
* [homebrew] - o
    - Install packages - o
* zsh
    - My github zshrc: [zshrc]
    - Bash to zsh (oh-my-zsh) 設定心得: [here] [icarus4]
* [go-lang]
* python
    - Simple Python version management: [pyenv]
* [node]
* vim
* [virtualbox] and [vagrant]
    - Plugin: [vagrant-vbguest]

---

## Software
### iterm2
#### Install

Download stable releases from following link: [iterm2]

### Xcode
#### Install

* Install [Xcode] from the App store or the Apple developer website.
* Install Xcode command line tool:

```sh
$ xcode-select --install
```

## Package And Programming Language:
### Homebrew
#### Install

```sh
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### What Does Homebrew Do?
Homebrew installs packages to their own directory. (/usr/local/Cellar) Example:
```sh
# This command will show the Cellar file list in one layer
$ brew install tree
$ tree Cellar -L 1
Cellar
├── ...
├── tree
├── ...

# Symlinks their files into /usr/local. Example:
$ ls -l /usr/local/bin
bin/wget -> ../Cellar/wget/1.16.1/bin/wget
```

Get other information
```sh
$ brew -h
```

#### Install Packages

> 1. lua
> 2. ctags
> 3. cscope
> 4. cmake

```sh
$ brew install lua 
$ brew install ctags
$ brew install cscope
$ brew install cmake

# cd /usr/local/bin to check the symbolic link of these packages.
# ...
# brew -> /usr/local/Homebrew/bin/brew
# ccmake -> ../Cellar/cmake/3.6.3/bin/ccmake
# cmake -> ../Cellar/cmake/3.6.3/bin/cmake
# cscope -> ../Cellar/cscope/15.8b/bin/cscope
# ctags -> ../Cellar/ctags/5.8_1/bin/ctags
# ctest -> ../Cellar/cmake/3.6.3/bin/ctest
# ex -> ../Cellar/vim/8.0.0071/bin/ex
# ...
```

### zsh
#### Install

```sh
$ brew install zsh 
$ which zsh
/usr/local/bin/zsh

#//// /usr/local/bin/zsh -> ../Cellar/zsh/5.2/bin/zsh
```

### zsh-completions
```sh
$ brew install zsh-completions
$  
```
### Oh My Zsh

Install oh-my-zsh on top of zsh to get additional functionality

---

### Virtualbox and Vagrant
#### Install
Download the install package(.dmg) through following links to install virtualbox and vagrant:
* virtualbox: <https://www.virtualbox.org/wiki/Downloads>
* vagrant: <https://www.vagrantup.com/downloads.html>

### Install Vagrant Plugin
* Reference: <https://github.com/dotless-de/vagrant-vbguest>

```sh
$ vagrant plugin install vagrant-vbguest
```

#### Install Package And Programming Language:
> 5. vim
> 6. python
> 7. node


```sh
$ brew install vim --with-lua --with-python
$ brew install node
```


4. (Optional) 安裝 python 所需的套件 (需先用 homebrew 安裝 python)

```sh
$ pip install pyflakes

```

5. (Optional) 安裝 haskell 所需的套件 (需先用 homebrew 安裝 haskell-platform)
```sh
$ cabal install hasktags
$ cabal install hlint
```

6. 安裝 Vim
```sh
$ brew install vim --with-lua --with-python
```

## Installation

習慣上, 我會在 ~/Document/ 資料夾中進行安裝,
進入家目錄的 Document 資料夾, git clone the rc.git from github
再進入 rc 資料夾中, 執行 ./install_unix.sh 來進行 rc 檔案的設定和安裝即可.

```sh
$ cd ~/Document
$ git clone https://github.com/whlin/rc.git
$ cd rc
$ ./install_unix.sh
```
## Preface

本設定包含了 rc, vimfilers, zshrc 等相關環境的設定
請根據以下順序, 將相關的環境設定安裝:
    
 - [rc] 
 - [zshrc]
 - [vimfilers]
___

<!--github link-->
[rc]: <https://github.com/whlin/rc>
[zshrc]: <https://github.com/whlin/zshrc>
[vimfilers]: <https://github.com/whlin/vimfilers>

<!--software and package link-->
[homebrew]: <http://brew.sh/>
[Xcode]: <https://developer.apple.com/xcode/>
[iterm2]: <https://www.iterm2.com/downloads.html>
[icarus4]: <http://icarus4.logdown.com/posts/177661-from-bash-to-zsh-setup-tips>
[virtualbox]: <https://www.virtualbox.org/wiki/Downloads>
[vagrant]: <https://www.vagrantup.com/downloads.html>
[vagrant-vbguest]: <https://github.com/dotless-de/vagrant-vbguest>

<!--programming language link-->
[go-lang]: <https://golang.org/doc/install>
[pyenv]: <https://github.com/yyuu/pyenv-installer>
[node]: <http://blog.teamtreehouse.com/install-node-js-npm-mac>
