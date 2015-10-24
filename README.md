# whlin's rc setting

## Preface

本開發環境的建置, 包含了 gitconfig, screenrc, zshrc, vimrc.
在家目錄的 Document 內建置 rc 目錄, 之後再將 [zshrc] 和 [vimfilers]
從 github 上抓到 rc 目錄內, 作後續的安裝. 

此外, 為了方便日後的管理和重建, 在家目錄下新增 rc_files, 
並在將 rc, zshrc, vimfilers 一起從 github 抓到 rc_files 資料夾中.
gitconfig, screenrc, zshrc, vimrc 在 rc 資料夾中修改後, 
透過

 - update_rc.sh
 - update_vimfiles.sh, 
 - update_zshrc.sh

將 rc_files 的內容更新.

## 設計概念

在 rc 建制環境, 在 rc_files 作 rc 文件的更新和上載到 github 的處理.


## Installation

進入 家目錄的 Document 資料夾, 並 clone the repo from github:

```sh
$ cd ~/Document
$ git clone https://github.com/whlin/rc.git
```


## local 目錄設置

在家目錄, 創建 rc_files 資料夾, 

[rc]: <https://github.com/whlin/rc>
[zshrc]: <https://github.com/whlin/zshrc>
[vimfilers]: <https://github.com/whlin/vimfilers>

