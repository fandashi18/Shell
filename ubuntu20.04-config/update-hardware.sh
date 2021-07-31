echo "更新驱动"
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
ubuntu-drivers devices
echo "\n 选择一个驱动，假设是a，现在输入命令 sudo apt install a\n然后重启系统"

repo init -u git://mirrors.ustc.edu.cn/aosp/platform/manifest --depth=1 -b android-7.1.2_r39
