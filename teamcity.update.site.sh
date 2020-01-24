#!/bin/bash
printf "\nUpdating the Website...\n"
printf "\nRobinson is pulling the latest changes from github.com...\n"
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/jerbil/.git/ --work-tree=/home/winterwell/jerbil gc --prune=now'
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/jerbil/.git/ --work-tree=/home/winterwell/jerbil pull origin master'
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/jerbil/.git/ --work-tree=/home/winterwell/jerbil reset --hard FETCH_HEAD'

ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/doc.good-loop.com/.git/ --work-tree=/home/winterwell/doc.good-loop.com gc --prune=now'
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/doc.good-loop.com/.git/ --work-tree=/home/winterwell/doc.good-loop.com pull origin master'
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/doc.good-loop.com/.git/ --work-tree=/home/winterwell/doc.good-loop.com reset --hard FETCH_HEAD'
printf "\nRobinson is converting markdown to HTML...\n"
ssh winterwell@robinson.soda.sh "cd /home/winterwell/doc.good-loop.com && java -jar /home/winterwell/jerbil/jerbil-all.jar"

printf "\nRobinson is optimising images...\n"
ssh winterwell@robinson.soda.sh 'jpegoptim /home/winterwell/doc.good-loop.com/webroot/img/*.jpg'
ssh winterwell@robinson.soda.sh 'optipng /home/winterwell/doc.good-loop.com/webroot/img/*.png'
printf "\nwebsite updated\n"