## Git配置与使用(入门版)

#### 创建一个目录存放目录

```shell
mkdir Project
cd Project
```

#### 将目录变成Git可以管理的仓库(初始化)

```shell
git init
```

#### 从远程拉取仓库到本地(以GitHub为例)

```shell
git clone <仓库ssh>
```

#### 提交到本地仓库

```shell
git add <文件名>
git commit -m "描述信息"
```

#### 从本地仓库提交到远程仓库

```shell
git push origin master
# 把本地 master 分支的最新修改推送至GitHub
```

