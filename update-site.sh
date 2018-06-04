#!/bin/bash
echo "Updating the Website..."
echo ""
echo "Robinson is pulling the latest changes from github.com..."
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/doc.good-loop.com/.git/ --work-tree=/home/winterwell/doc.good-loop.com gc --prune=now'
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/doc.good-loop.com/.git/ --work-tree=/home/winterwell/doc.good-loop.com pull origin master'
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/doc.good-loop.com/.git/ --work-tree=/home/winterwell/doc.good-loop.com reset --hard FETCH_HEAD'
echo ""
printf "\nRobinson is checking for Jerbil updates...\n"
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/jerbil/.git/ --work-tree=/home/winterwell/jerbil gc --prune=now'
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/jerbil/.git/ --work-tree=/home/winterwell/jerbil pull origin master'
ssh winterwell@robinson.soda.sh 'git --git-dir=/home/winterwell/jerbil/.git/ --work-tree=/home/winterwell/jerbil reset --hard FETCH_HEAD'
echo "Robinson is converting markdown to HTML..."
ssh winterwell@robinson.soda.sh 'cd /home/winterwell/doc.good-loop.com && bash run-jerbil.sh'
echo ""
echo "Robinson is optimising images..."
ssh winterwell@robinson.soda.sh 'jpegoptim /home/winterwell/doc.good-loop.com/webroot/img/*.jpg'
ssh winterwell@robinson.soda.sh 'optipng /home/winterwell/doc.good-loop.com/webroot/img/*.png'
echo ""
echo "website updated"
