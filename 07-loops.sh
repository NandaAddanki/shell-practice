#!/bin/bash

userid=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

for packege in $@
do 
dnf list  installed $package
if [ $? -ne 0 ]
 then
  echo "install the $package"
  dnf install $package -y
 else 
  echo "$package is already installed"
fi
done