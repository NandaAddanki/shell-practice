
#!/bin/bash

userid=$(id -u) # id -u will give user id eg:001

if [ ${userid} -ne 0 ] # 0 is user id of root user
then
echo "User should have root previliges to install"
exit 1
fi
dnf list mysql
if [ $? -ne 0 ]
then
echo "mysql is not installed yet. installing"
dnf install mysql -y
exit 1
else
echo "mysql already installed"
fi