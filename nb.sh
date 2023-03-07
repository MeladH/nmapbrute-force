#!/bin/bash 
function fun0() {
echo -e "######The date of running will save in (nb.log) and will save the output in file his name like the ip address   which you have entered with (.txt) and will show the results on the screen######\n"
 echo "Choose one of these options
1. scan 100 ports
2. scan 1000 ports
3. scan all the ports"

read x

if [ "$x" -eq "1" ];then fun1;fi
if [ "$x" -eq "2" ];then fun2;fi
if [ "$x" -eq "3" ];then fun3;fi
}

function fun1() {
  echo "Will start scanning after to enter the ip address" 
 read y

nmap -oN $y.txt $y -Pn -F -sV &>/dev/null
   echo "The scaning (100 ports) was at $(date)" >>nb.log
fun1.1
}

function fun1.1() {
  echo "Enter open (show all open services)/service name to search"
  read qw
    echo "######THE RESULTS######"
cat $y.txt | grep $qw
  echo "The results of scan was showing at $(date)" >>nb.log
  echo -e "######THE RESULTS######\n"
 echo "If you want to EXIT enter ex1
If you want to scan again enter aa
If you want to start brute force attack enter 3
If you want to search again enter qw1"

 read s

if [ "$s" == "ex1" ];then exit;fi
if [ "$s" == "aa" ];then fun0;fi
if [ "$s" == "qw1" ];then fun1.1;fi
if [ "$s" -eq "3" ];then fun4;fi
}

function fun2() {

 echo "Will start scanning after to enter the ip address"

 read k

nmap -oN $k.txt $k -Pn -sV &>/dev/null
 echo "The scanning was at $(date)" >>nb.log
fun2.2
}

function fun2.2() {
   echo "Enter open (show the open services)/service name to search"
  read qw2 
  echo "######THE RESULTS######"
cat $k.txt | grep $qw2 
 echo "The results of scan was showing at $(date)" >>nb.log
  echo -e "######THE RESULTS######\n"

  echo "If you want to EXIT enter ex2
If you want to scan again enter bb
If you want to brute force attack enter 4
If you want to search again enter qw3"

 read u

if [ "$u" == "ex2" ];then exit;fi
if [ "$u" == "bb" ];then fun0;fi
if [ "$u" == "qw3" ];then fun2.2;fi 
if [ "$u" -eq "4" ];then fun4;fi
}

function fun3() {

 echo "Will start scanning after to enter the ip address"

 read i

nmap -oN $i.txt $i -Pn -sV -p- &>/dev/null  
 echo "The scanning was at $(date)" >>nb.log
fun3.3
}

function fun3.3() {
 echo "Enter open (show all open services)/service name to search"
  read qw4
 echo "######THE RESULTS######"

cat  $i.txt | grep $qw4

 echo "The results of scan was showing at $(date)" >>nb.log
  echo -e "######THE RESULTS######\n"

  echo "If you want to EXIT enter ex3
If you want to scan again enter cc
If you want to brute force attack enter 5
If you want to search again enter qw5"

 read m

if [ "$m" == "ex3" ];then exit;fi
if [ "$m" == "cc" ];then fun0;fi
if [ "$m" == "qw5" ];then fun3.3;fi
if [ "$m" -eq "5" ];then fun4;fi
}

function fun4() {

 echo "Choose one of these options

A. Brute force attack with user name and file contains passwords list and ip address
B. Brute force attack with file contains user names list and password and ip address
C. Brute force attack with file contains user names list and file contains passwords list and ip
D. Brute force attack with user name and file contains passwords list and ip address and defult port number
E. Brute force attack with file contains user names list and password and ip and defult port number
F. Brute force attack with file contains use names list and file contains passwords list and defult port number"

 read G

if [ "$G" == "A" ]
then
  echo  "Will start brote force attack after to enter the informations"  


 echo "Enter the ip address"
 read n

 echo "Enter service name"
 read f

 echo "Enter the username"
 read q

  echo "####IF THE FILE NOT EXISITING IN THE CURRENT PATH,THEN,ENTER THE FULL PATH THAT CONTAINS THE FILE NAME####"


  echo "Enter the file name that contains the passwords list/path"
  read l


hydra -l $q -P $l -v $n $f -o $n.txt &>/dev/null
  echo "The brute fore attack was at $(date)">> nb.log
  echo "######THE RESULTS######"
cat $n.txt
  echo "The results of brote force attack was showing at $(date)" >> nb.log
  echo -e "######THE RESULTS######\n"
 echo "Enter ex4 to Exit
Enter ra to start brote force attack again
Enter rb to start scan again"
read wa
if [ "$wa" == "ex4" ];then exit;fi
if [ "$wa" == "ra" ];then fun4;fi
if [ "$wa" == "rb" ];then fun0;fi
fi

if [ "$G" == "B" ]
then

echo "Will start brute force attack after to enter the informations"

  echo "Enter the ip address"
  read a

  echo "Enter the service name"
  read b

  echo "####IF THE FILE NOT EXISTING IN THE CURRENT PATH,THEN,ENTER THE FULL PATH THAT CONTAINS THE FILE NAME####"

  echo "Enter the file that contains the usernames list/path"
  read c

  echo "Enter the password"
  read d

hydra -L $c -p $d -v $a $b -t4 -F -o $a.txt &>/dev/null
 echo "The brute force attack was at $(date)">> nb.log
  echo "######THE RESULTS######"
cat $a.txt
  echo "The results of brote force attack was showing at $(date)" >> nb.log
   echo -e "######THE RESULTS######\n"

 echo "Enter ex5 to Exit
Enter rc to start brote force attack again
Enter rd to start scan again"
read wb
if [ "$wb" == "ex5" ];then exit;fi
if [ "$wb" == "rc" ];then fun4;fi
if [ "$wb" == "rd" ];then fun0;fi

fi


if [ "$G" == "C" ]
then

  echo  "Will start brute force attack after to enter the informations"

 echo "Enter the ip address" 
 read g

  echo "Enter the service name"
  read h

  echo "####IF THE FILE NOT EXISTING IN THE CURRENT PATH ,THEN,ENTER THE FULL PATH THAT CONTAINS THE FILE NAME####"

  echo "Enter the file name that contains usernames list/path"
  read j

   echo "####IF THE FILE NOT EXISTING IN THE CURRENT PATH ,THEN,ENTER THE FULL PATH THAT CONTAINS THE FILE NAME####"

   echo "Enter the file name that contains the passwords list/path"
   read v

hydra -L $j -P $v -v $g $h -F -o $g.txt &>/dev/null
  echo "The brute force attack was at $(date)">> nb.log
echo "######THE RESULTS######"
cat $g.txt
  echo "The results of brote force attack was showing at $(date)" >> nb.log
  echo -e "######THE RESULTS######\n"

  echo "Enter ex6 to Exit
Enter re to start brote force attack again
Enter rf to start scan again"
read wc
if [ "$wc" == "ex6" ];then exit;fi
if [ "$wc" == "re" ];then fun4;fi
if [ "$wc" == "rf" ];then fun0;fi

fi 

if [ "$G" == "D" ]
then

  echo "Will start brute force attack after to enter the informations"

  echo "Enter the ip address"
  read w

  echo "Enter the service name"
  read H

   echo "Enter the username"
   read I

   echo "####IF THE FILE NOT EXISTING IN THE CURRENT PATH,THEN,ENTER THE FULL PATH THAT CONTAINS THE FILE NAME####"

   echo "Enter the file name that contains the passwords list/path"
   read J 

  echo "Enter the defult port number of the protocol"
  read K
hydra -l $I -P $J  $w $H -v -s$K -F -o $w.txt &>/dev/null
  echo "The brute force attack was at $(date)">> nb.log
 echo "######THE RESULTS######"
cat $w.txt
  echo "The results of brote force attack was showing at $(date)" >> nb.log
  echo -e "######THE RESULTS######"

  echo "Enter ex7 to Exit
Enter rg to start brote force attack again
Enter rh to start scan again"
read wd 
if [ "$wd" == "ex7" ];then exit;fi
if [ "$wd" == "rg" ];then fun4;fi
if [ "$wd" == "rh" ];then fun0;fi

fi

if [ "$G" == "E" ]
then

  echo "Will start brute force after attack to enter the informations"

  echo "Enter the ip address"
  read BB

  echo "Enter the service name"
  read M

  echo "####IF THE FILE NOT EXISTING IN THE CURRENT PATH,THEN,ENTER THE FULL PATH THAT CONTAINS THE THE FILE NAME####"

  echo "Enter the file name that contains the usernames list/path"
  read N

  echo "Enter the password"
  read AA

   echo "Enter the defult port number of the protocol"
  read Q

hydra -L $N -p $AA -v $BB $M -s$Q -F -o $BB.txt &>/dev/null
 echo "The brute forece attack was at $(date)">> nb.log

echo "######THE RESULTS######"
cat $BB.txt
  echo "The results of brote force was showing at $(date)" >> nb.log
  echo -e "######THE RESULTS######"

 echo "Enter ex8 to Exit
Enter ri to start brote force attack again
Enter rj to start scan again"
read we
if [ "$we" == "ex8" ];then exit;fi
if [ "$we" == "ri" ];then fun4;fi
if [ "$we" == "rj" ];then fun0;fi


fi

if [ "$G" == "F" ]
then

  echo "Will start brute force attack after to enter the informations"

  echo "Enter the ip address"
 read R

  echo "Enter the service name"
  read S

  echo "####IF THE FILE NOT EXISTING IN THE CURRENT PATH,THEN,ENTER THE FULL PATH THAT CONTAIN THE FILE NAME####"

  echo "Enter the file name that contain the usernames list/path"
  read T

   echo "####IF THE FILE NOT EXISTING IN THE CURRENT PATH,THEN,ENTER THE FULL PATH THAT CONTAIN THE FILE NAME####"

   read U

   echo "Enter the defult port number"
  read Y


hydra -L $T -P $U  $R $S -v -s$Y -F -o $R.txt &>/dev/null

  echo "The brute force attack was at $(date)">> nb.log
  echo "######THE RESULTS######"
cat $R.txt
  echo "The results of brote force attack was showing at $(date)" >> nb.log
   echo -e "######THE RESULTS######\n"
 
echo "Enter ex9 to Exit
Enter rk to start brote force again
Enter rl to start scan again"
read wf
if [ "$wf" == "ex9" ];then exit;fi
if [ "$wf" == "rk" ];then fun4;fi
if [ "$wf" == "rl" ];then fun0;fi

fi
}
fun0
