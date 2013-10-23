#!/bin/bash  
echo "======start repo sync======"  
repo sync -j16 
while [ $? == 1 ]; do  
echo "======sync failed, re-sync again======"  
sleep 3  
repo sync -j16
done

