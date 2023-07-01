#!/bin/bash

if [[ $1 ]]
  then 
    echo -e "/n$1"
fi

RAND_NUM=$(( $RANDOM % 1000 + 1 ))
ATTEMPT=1
echo "Guess the secret number between 1 and 1000"

while read GUESS
    do
        if [[ ! $GUESS =~ ^[0-9]+$ ]]
            then
                echo "That is not an integer, guess again:"
            else
                if [[ $RAND_NUM -eq $GUESS ]]
                    then
                        break;
                    else
                    if [[ $GUESS -gt $RAND_NUM ]]
                        then
                            echo -n "It's lower than that, guess again:"
                    elif [[ c$GUESS -lt $RAND_NUM ]]
                        then
                            echo -n "It's higher than that, guess again:"
                    fi
                
                fi
        fi                
        ATTEMPT=$(( $ATTEMPT + 1 )) 
    done


 
if [[ $ATTEMPT == 1 ]]
    then
        echo "You guessed it in $ATTEMPT tries. The secret number was $RAND_NUM. Nice job!"
    else
        echo "You guessed it in $ATTEMPT tries. The secret number was $RAND_NUM. Nice job!"
fi
