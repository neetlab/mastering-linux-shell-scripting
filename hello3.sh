#!/bin/bash
# echo -n "Bonjour $(basename $0) ! Qu'est-ce que vôtre nom : "
# read
# echo "Bonjour $REPLY"
# exit 0 

: << "COMMENT"
これは複数行のコメントです。
コロンを使うと、noopの意味になります。
COMMENT

# or simply
read -p "Qu'est-ce que vôtre nom : " name
echo "Bonjour $name"
read -sn1 -p "Press any key to exit"
echo
exit 0 
