#!/bin/bash
# file        :item2_adduser.sh
# Author      :feldan
# url https://blog.feldan.top
# Date        :2022/06/09 16:24:57
uid=1009
gid=1010
groupadd -g $gid stugrp
for((i=1;i<51;i++)); 
do
if ["$i" -lt 10]
then
uname=stu0$i
else
uname=stu$1
fi
    let "uid=uid+1"
    echo $uname:x:$uid:$gid:$uname:/home/$uname:/bin/bash>>user.txt
    echo $uname:stu123>>userpasswd.txt
done
echo "User and password generation succeeded"
newusers < user.txt #读取创建
pwunconv #取消加密
chpasswd < userpasswd.txt #读取创建密码
pwconv #恢复加密
echo "succeede"


     
   