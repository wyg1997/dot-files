## 目录

[toc]

## 文件说明

### tmux

#### 相关文件

- [.tmux.conf](.tmux.conf)
- [.tmux.conf.local](.tmux.conf.local)

#### 说明

- 大部分使用[原作者](https://github.com/gpakosz/.tmux)的配置，非常非常感谢!
- 文件放在根目录`~`下。
- 对tmux的前缀键、快捷键和界面做了修改和美化。
- `.tmux.conf.local`最后几行会覆写`.tmux.conf`的一些配置，要注意一下。

---

### zsh

#### 相关文件

- [.zshrc](.zshrc)

#### 说明

- 文件放在根目录`~`下。
- 添加了`numf`和`numd`命令，分别可以统计当前文件夹下的`文件数`和`文件夹数`。
- 支持`ll`命令。
- 添加快捷键`ctrl+f`补全命令，`ctrl+j`执行命令(配合oh-my-zsh使用)。
- 添加`ex`命令，可以自动识别文件格式进行解压。
- shell改为`vi`模式，比较适合我的习惯。

---

### Oh-my-zsh

#### 相关文件

- [bullet-train.zsh-theme](bullet-train.zsh-theme)

#### 说明

- 放在`${Oh-my-zsh}/themes`目录下。
- 是zsh的一个主题，感谢原作者，[传送门](https://github.com/caiogondim/bullet-train.zsh)。
- 关闭了`context`和`nvm`的显示(在文件的前几十行修改注释即可)。

---

### Ubuntu apt source-list

#### 相关文件

- [sources.list](sources.list)

#### 说明

- 放在`/etc/apt`目录下。
- 更换Ubuntu的源，加速apt国内下载

---

### pip.config

#### 相关文件

- [pip.config](pip.config)

#### 说明

- 放在`~/.pip`目录下。
- 更换pip的源，加速pip下载。

---

### manjaro

#### 相关文件

- [manjaro3.sh](manjaro3.sh)

#### 说明

- manjaro相关配置命令。
- **不建议**直接运行，直接在文件中找需要的命令执行即可。
