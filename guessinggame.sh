#!/usr/bin/env bash
# File: guessinggame.sh

count=$(ls *.* | wc -l)
guess=0

# check the user's guess. return 'low', 'high', or 'equal'
function checkguess {
  tmpstor=$gss
#echo "your response was $tmpstor"
if [[ $tmpstor -lt $count ]]
then
  echo 0
fi     
if [[ $tmpstor -gt $count ]]
then
  echo 1
fi
if [[ $tmpstor -eq $count ]]
then
  echo 2          
fi 
}

while [[ $guess -ne $count ]]
do
  echo "Guess how many files are in my directory and press Enter:"
  read response1
  #echo "Your response: $response1"
  gss=$response1
  retval=$(checkguess "$gss")
  #echo $retval
  if [[ $retval -eq 0 ]]
  then
    echo "Too low."
  fi
  if [[ $retval -eq 1 ]]
  then
    echo "Too high."
  fi
  if [[ $retval -eq 2 ]]
  then
    echo "You got it! Good job!"
    let guess=$response1
  fi
done
