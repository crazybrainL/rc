# whlin's Mac OS X Guide

### Software
* [iterm2]
* Xcode

### Package And Programming Language:
* [homebrew]
* zsh
    - Install zsh
    - Install oh-my-zsh 
    - Install zsh-completions
    - Setup [zshrc]
* [golang]
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
### [Homebrew]
#### Install

```sh
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### What Does Homebrew Do?
Homebrew installs packages to their own directory and then symlinks their files into /usr/local.

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
#### Install zsh
```sh
$ brew install zsh

# Change to new zsh (/usr/local/bin/zsh).
$ chsh -s /usr/local/bin/zsh
```

Check install succeeds
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

#### Install oh-my-zsh
```sh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

If you want to install other path you can use git clone and remeber to change .zshrc setting.
```sh
$ git clone git://github.com/robbyrussell/oh-my-zsh.git [your_path]
```

#### Install zsh-completions
Reference: [icarus4]
```sh
$ brew install zsh-completions  
```

Check install succeeds, you can use **ls** command to make sure that package install succeeds.
```sh
$ ls /usr/local/share
aclocal         doc             git-gui         info            systemtap       zsh-completions
autoconf        emacs           gitk            lua             vim
cmake           git-core        gitweb          man             zsh
```

#### Setup [zshrc]
```sh
$ cd ~/Documents/
$ git clone https://github.com/whlin/zshrc.git
$ cd ~/Documents/zshrc
$ ./install_unix.sh
```

### Golang

[Download the archive](https://golang.org/dl/) and extract it into /usr/local, creating a Go tree in /usr/local/go.
For example:
```sh
tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
```

Add /usr/local/go/bin to the PATH environment variable. (~/.zshec has already setting)
```sh
export PATH=$PATH:/usr/local/go/bin
```

### Python
#### Simple Python version management: [pyenv]

Install:
```sh
$ curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
```

Uninstall: pyenv is installed within $PYENV_ROOT (default: ~/.pyenv). To uninstall, just remove it:
```sh
$ rm -fr ~/.pyenv
```
and remove these three lines from .bashrc:
```
export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

#### Install python using pyenv

List all versions of python
```sh
$ pyenv install --list
...
2.7.10
2.7.11
2.7.12
3.0.1
3.1
3.1.1
...
```

Install one of python versions
```sh
$ pyenv install 2.7.12
```

See python versions
```sh
$ pyenv versions
*  system
   2.7.12
```

Change python versions
```sh
$ pyenv global 2.7.12
   system
*  2.7.12
```

Reference:
* pyenv Command Reference: [ref](http://v2in.com/pyenv-installation-and-usage.html)
* Simple Python Version Management: [pyenv]

### [Node]
#### Install Node
```sh
$ brew install node
```

#### What is npm?
npm makes it easy for JavaScript developers to share and reuse code, and it makes it easy to update the code that you're sharing.

#### Installing npm packages locally or globally
There are two ways to install npm packages: locally or globally. You choose which kind of installation to use based on how you want to use the package.

If you want to depend on the package from your own module using something like Node.js' require, then you want to install locally, which is npm install's default behavior. 

On the other hand, if you want to use it as a command line tool, something like the grunt CLI, then you want to install it globally.


#### [Installing npm packages locally](https://docs.npmjs.com/getting-started/installing-npm-packages-locally)

A package can be downloaded with the command
```sh
$ npm install <package_name>
```
This will create the node_modules directory in your current directory(if one doesn't exist yet), and will download the package to that directory.

#### [Installing npm packages globally](https://docs.npmjs.com/getting-started/installing-npm-packages-globally)

To download packages globally, you simply use the command
```sh
$ npm install -g <package_name>
```
The package will be installed in the global package set: node_modules (Path: /usr/local/lib/node_modules)

Reference: 
* [How to Install Node.js and NPM on a Mac](http://blog.teamtreehouse.com/install-node-js-npm-mac)
* [nodeJS document] [node]

### vim
#### Install vim
```sh
$ brew install vim --with-lua --with-python
```

#### Setup [vimfilers]
```sh
$ cd ~/Document
$ git clone https://github.com/whlin/vimfilers.git
$ cd vimfiles
$ ./install_unix.sh
```

### Virtualbox and Vagrant
#### Install
Download the install package(.dmg) through following links to install virtualbox and vagrant:
* virtualbox: <https://www.virtualbox.org/wiki/Downloads>
* vagrant: <https://www.vagrantup.com/downloads.html>

#### Install Vagrant Plugin
* Reference: <https://github.com/dotless-de/vagrant-vbguest>

```sh
$ vagrant plugin install vagrant-vbguest
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
[golang]: <https://golang.org/doc/install>
[pyenv]: <https://github.com/yyuu/pyenv-installer>
[node]: <https://docs.npmjs.com/>
