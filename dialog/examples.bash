#!/bin/bash
# 进度条
for((i=0;i<101;i++));
do
    echo $i 
    sleep 0.03
done | dialog --no-shadow --title "QQ" --gauge "loading" 7 20 

# 输入框
dialog --no-shadow --title "QQ" --inputbox "username" 9 18 2> /tmp/name.text
printf "user name is %s\n" $(cat /tmp/name.text)

# 密码框
dialog --no-shadow --title "QQ" --passwordbox "password" 9 18 2> /tmp/password.text
printf "password is %s\n" $(cat /tmp/password.text)

# 菜单
dialog --title Friend --menu "Choose a friend" 9 18 3 A Ann B John C Mike 2> /tmp/choosed.text
printf "you choosed %s\n" $(cat /tmp/choosed.text)

# 复选框
dialog --title Fruit --checklist "Choose a fruit" 9 18 2 A Apple B Banna