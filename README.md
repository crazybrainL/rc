# whlin's Mac OS X Guide

### Software
* [iterm2] - o
* Xcode - o 

### Package And Programming Language:
* [homebrew] - o
* zsh
    - Install zsh, oh my zsh and zsh-completions - o
    - Setup [zshrc] - o
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

Download stable releases from following link: [iterm2]

### Xcode

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
Homebrew installs packages to their own directory and then symlinks their files into /usr/local. <\br>
Get more information
```sh
$ brew -h
```

#### Install Packages
1. cmake  
2. cscope 
3. ctags  
4. lua    
5. tree
    - This progeam can show the file list.
6. ...

```sh
$ brew install cmake cscope ctags lua tree ...
```

After installing, you could

1. Use **tree** to make sure that brew install succeeds.
2. **cd** to /usr/local/bin and use **ls -l** to make sure that symbolic link is correct.
3. Use **which** to find out where a program is located.  

```sh
# Step 1.
$ tree /usr/local/Cellar -L 1 (layer one)
/usr/local/Cellar
├── ...
├── cmake
├── cscope
├── ctags
├── lua
├── tree
├── ...

# Step 2.
$ cd /usr/local/bin
$ ls -l
...
cmake -> ../Cellar/cmake/3.6.3/bin/cmake
cscope -> ../Cellar/cscope/15.8b/bin/cscope
ctags -> ../Cellar/ctags/5.8_1/bin/ctags
lua -> ../Cellar/lua/5.2.4_4/bin/lua
tree -> ../Cellar/tree/1.7.0/bin/tree
...

# Step 3.
$ which cmake cscope ctags lua tree
/usr/local/bin/cmake
/usr/local/bin/cscope
/usr/local/bin/ctags
/usr/local/bin/lua
/usr/local/bin/tree
```

### zsh
#### Install zsh, oh-my-zsh And zsh-completions

**Install zsh**
```sh
$ brew install zsh

# Change to new zsh (/usr/local/bin/zsh).
$ chsh -s /usr/local/bin/zsh
```
**Checking**
```sh
# Step 1.
$ tree /usr/local/Cellar -L 1 (layer one)
/usr/local/Cellar
├── ...
├── zsh
├── ...

# Step 2.
$ cd /usr/local/bin/
$ ls -l
zsh -> ../Cellar/zsh/5.2/bin/zsh

# Step 3.
$ which zsh
/usr/local/bin/zsh
```

**Install oh-my-zsh**
Install oh-my-zsh on top of zsh to get additional functionality
```sh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

If you want to install other path you can use git clone and remeber to change .zshrc setting.
```sh
$ git clone git://github.com/robbyrussell/oh-my-zsh.git [your_path]
```

**Install zsh-completions**
Reference: [icarus4]
```sh
$ brew install zsh-completions  
```
**Checking**
You can use **ls** command to make sure that package install succeeds.
```sh
$ ls /usr/local/share
aclocal         doc             git-gui         info            systemtap       zsh-completions
autoconf        emacs           gitk            lua             vim
cmake           git-core        gitweb          man             zsh
```

#### Setup zshrc
```sh
$ cd ~/Documents/
$ git clone https://github.com/whlin/zshrc.git
$ cd ~/Documents/zshrc
$ ./install_unix.sh
```
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
