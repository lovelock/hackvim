# hackvim
My own VIM configuration
作为一个以PHP为主的开发者，经常直接在服务端编写代码，那么一套简单但实用的Vim配置就必不可少了。

如果你像我一样，主要写PHP，偶尔写点Python/JS，可以直接用这个代码库的server分支。

如果平时还经常接触别的语言，那就用master分支，功能比较全，尤其是YouCompleteMe简直是大杀器，不过装起来也挺麻烦的，看自己的需求吧。
需要注意的是YouCompleteMe要求的东西还是蛮多的。

# 1. Installation
### 1. clone the repo to your local disk
```
git clone https://github.com/lovelock/hackvim.git
```

### 2. go to the project directory and execute install.sh
```
cd /path/to/hackvim
sh -x install.sh
```

### 3. enjoy it.

# 2. Tips
There maybe some problems in old Linux distributions, such as CentOS 5.5 or older, the you can checkout the server branch and use
the non-YCM version. Believe me, the server branch is so good to improve your productity.
```
git checkout server
```
