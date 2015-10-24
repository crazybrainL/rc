# whlin's rc setting

## Preface

本開發環境的建置, 包含了 gitconfig, screenrc, zshrc, vimrc.
在家目錄的 Document 內建置 rc 目錄, 之後再將 [zshrc] 和 [vimfilers]
從 github 上抓到 rc 目錄內作後續的安裝. 

此外, 為了方便日後的管理和重建, 在家目錄下新增 rc_files, 
並在將 rc, zshrc, vimfilers 一起從 github 抓到 rc_files 資料夾中.
gitconfig, screenrc, zshrc, vimrc 在 rc 資料夾中修改後, 
透過下列檔案將 rc_files 的內容更新.

 - update_rc.sh (in rc file)
 - update_vimfiles.sh (in vimfilers file)
 - update_zshrc.sh (in zshrc file)


## 設計概念

在 rc 建制環境, 在 rc_files 作 rc 文件的更新和上載到 github 的處理.


## pre-install

Mac OSX

1. 安裝 command line tools

```sh
$ xcode-select --install
```

2. 安裝 [homebrew] or 執行下 command 安裝

```sh
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

3. 安裝會用到的軟體

```sh
$ brew install lua ctags cscope
$ sudo rm -f /usr/bin/ctags
$ sudo ln -s /usr/local/bin/ctags /usr/bin/ctags
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

進入 家目錄的 Document 資料夾, 並 clone the repo from github:

```sh
$ cd ~/Document
$ git clone https://github.com/whlin/rc.git
```

## local rc_files 目錄設置

在家目錄, 創建 rc_files 資料夾, 並將 rc 檔案 git clone 進來

```sh
$ mkdir rc_files
$ cd ~/rc_files
$ git clone https://github.com/whlin/rc.git
```


[rc]: <https://github.com/whlin/rc>
[zshrc]: <https://github.com/whlin/zshrc>
[vimfilers]: <https://github.com/whlin/vimfilers>
[homebrew]: <http://brew.sh/>
