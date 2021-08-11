#!/bin/zsh
# author: 徐同学

installBrew(){
    echo "安装Homebrew !"
    echo `/bin/zsh -c " $( curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh ) "`
    echo `brew update && brew upgrade && brew cleanup`
}

installPy_Ju(){
    echo `brew install python`
    echo `pip3 install jupyter`
}

zshrc(){
    echo `touch ~/.zshrc`
    cp -a ./zsh/zshrc.txt ~/.zshrc
    echo `source .zshrc`
}

Vim(){
    echo `touch ~/.vimrc`
    cp -a ./vim/vimrc.txt ~/.vimrc
}

read -n 1 -r -p "运行前请确保已经安装Git,如果没有则请自行安装Git再执行,是否运行此脚本?(Y/N):" input
printf "\n"
case $input in

    [yY])
        installBrew
        sleep 2s
        installPy_Ju
        sleep 2s
        zshrc
        sleep 2s
        Vim
        echo "HomeBrew Python Jupyter zsh vim已经配置好了,现在就安装软件吧!"
        ;;

    [nN])
        echo "拜拜👋"
        ;;
esac