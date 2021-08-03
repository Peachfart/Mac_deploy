## 配置git与github关联

### 设置邮箱和用户名

打开Terminal，分别输入下列命令(输入一行命令后需要回车，以后不再声明)：

```shell
git config --global user.name "username"
git config --global user.email "xxx@xxx.com"
```

下面这一行设置可以增强输出命令的可读性：

```shell
git config --global color.ui auto
```

### 用ssh生成公钥

输入：

```shell
ssh-keygen -t rsa -C "xxx@xxx.com"
```

回车之后会出现如下所示的输出，直接按回车即可：

```shell
Generating public/private rsa key pair.
Enter file in which to save the key
(/Users/your_user_directory/.ssh/id_rsa): (按回车键)
Enter passphrase (empty for no passphrase): (按回车键)
Enter same passphrase again: (按回车键)
```

这样密钥文件就生成了，默认在用户目录下，如：`~/.ssh` 这个文件夹中。

### 将公钥添加到`github`中

1. 在`~\.ssh\`文件夹中找到`id_rsa.pub`  这个文件，用 cat 命令 打开，复制里面的所有内容。
2. 登陆`github账号`，点击头像旁的`小三角`展开，点击`settings`-`SSH and GPG keys`-`New SSH key`，在`Title`中取一个名字（任意），`key`中粘贴你刚刚复制的内容。然后点击`Add SSH key`即可。

### 测试是否关联成功

输入：

```shell
ssh -T git@github.com
```

出现以下结果即为成功：

```shell
Hi xxx! You've successfully authenticated, but GitHub does not provide shell access.
```

