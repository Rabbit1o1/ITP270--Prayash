#!/bin/bash
for i in first second
do
echo "Enter the $i username you will like to create "
read name
echo "Ener the $i password you will like to create "
read passwd
len=`expr length "$passwd"`
echo "Total characters in your password: $len"
while [ $len -le 7 ]
do
echo "Ener atleast 8 characters long  password for account $name "
read passwd
len=`expr length "$passwd"`
 echo "Total characters in your password : $len "

if [ $len -le 7 ]
then
  echo "You need to type atleast 8 characters long password"
else
sudo useradd -p "$passwd" "$name"
  echo "Account creation sucessful. Your account username is $name and the password for the account is  $passwd"
fi
done
done

