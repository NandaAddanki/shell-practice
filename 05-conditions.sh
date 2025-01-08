#!/bin/bash

day=$today
if [ $day -ne "sat" || "sun" ]
then 
echo "There is office"
else
echo "There is no office"
fi