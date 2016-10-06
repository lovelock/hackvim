# HackVim
作为一个以PHP为主的开发者，经常直接在服务端编写代码，那么一套~~简单~~但实用的Vim配置就必不可少了。

如果你像我一样，主要写PHP，偶尔写点Python/JS，可以直接用这个代码库的server分支。

如果平时还经常接触别的语言，那就用master分支，功能比较全，尤其是YouCompleteMe简直是大杀器，不过装起来也挺麻烦的，看自己的需求吧。
需要注意的是YouCompleteMe要求的东西还是蛮多的。

## 1. 解决依赖

### 1. Ubuntu/Debian

​	我自己的环境是Ubuntu 16.04（带GUI的）和Debian 8 sid（不带GUI），都比较新所以完全使用包管理器自带的版本即可。

​	`sudo aptitude install cmake automake python-dev ctags vim-nox`

### 2. CentOS

​	因为一般用的CentOS版本带的Vim、Python、cmake等等版本都较低，通常需要自行编译安装很多组件，挺麻烦，所以我现在其实已经基本叛逃到IDE了。按下面的指令安装的也并不保证能用。

​	`sudo yum install cmake vim ctags python-devel`

### 3. Fedora

​	最新的Fedora貌似已经废弃了yum，改用了一个奇怪的名字dnf，所以同样需要执行的是

​	`sudo dnf install cmake automake python-devel ctags vim`

​	因为我没有安装Fedora，所以有碰到问题的同学可以提出问题和解决方案，帮忙完善文档。

## 2. 安装HackVim

### 1. Clone项目到本地
```
git clone https://github.com/lovelock/hackvim.git
```

### 2. 执行安装脚本
```
cd /path/to/hackvim
sh -x install.sh 
```

# 3. 使用建议

前面说了，CentOS或者RHEL（估计没人用吧：）这种发行版，自带的软件版本都比较老，而这里依赖的很多功能都需要更新的版本的依赖，所以如果你的条件不满足，也没关系，就用功能少一些的版本吧。我这里提供了三种模式可供选择：

1. server 功能最少，其实就是代码高亮和括号补全等基础功能
2. lite 功能稍微多一些，移除了YouCompleteMe等这种庞大又拖累性能的插件，适用性可能要强一些
3. master 功能完整，性能较差。适合主力使用Vim做开发的同学使用。

虽然我自己也是Vim爱好者（算不上玩家，因为并不会开发扩展等），用的也还算6，但做开发的时间越长越发现Vim的力不从心，在开发大型的项目中，尤其是多人协作的项目，使用IDE还是比单纯的文本编辑器效率高不少的，起码像自动添加import(Java)或者use(PHP)语句和其他的一些自动补全都让我们省心不少，毕竟我们是写代码的，而不是研究写代码的工具的。

Keep Coding!