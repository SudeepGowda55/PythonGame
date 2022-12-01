#!/bin/bash

echo "Welcome to the Game Of Weapons"

sleep 0.5

read -p "Welcome Devil, Please select your weapon number ->  0 for Rock    1 for Paper    2 for Scissor : "  DEVIL
MONSTER=$(( $RANDOM % 3 ))

case $MONSTER in 
            0) 
                MONSTERWEAPON=ROCK
                ;;
            1) 
                MONSTERWEAPON=PAPER
                ;;
            2)  
                MONSTERWEAPON=SCISSOR
                ;;
esac

case $DEVIL in 
            0) 
                DEVILWEAPON=ROCK
                ;;
            1) 
                DEVILWEAPON=PAPER
                ;;
            2)  
                DEVILWEAPON=SCISSOR
                ;;
esac

function beastbattle () {

    if [[ $MONSTER = $DEVIL ]]; then 
        echo "Devil, You have selected $DEVILWEAPON"    
        echo "The Monster has selected $MONSTERWEAPON"
        echo "The Game is Tie, Play again"
    elif [[ $MONSTER = 0 && $DEVIL = 1 ]]; then
        echo "Devil, You have selected $DEVILWEAPON"
        echo "The Monster has selected $MONSTERWEAPON"
        echo "Congrats Devil, You defeated the Monster"
    elif [[ $MONSTER = 0 && $DEVIL = 2 ]]; then
        echo "Devil, You have selected $DEVILWEAPON"
        echo "The Monster has selected $MONSTERWEAPON"
        echo "sorry Devil, The Monster defeated You"
    elif [[ $MONSTER = 1 && $DEVIL = 0 ]]; then
        echo "Devil, You have selected $DEVILWEAPON"
        echo "The Monster has selected $MONSTERWEAPON"
        echo "sorry Devil, The Monster defeated You"
    elif [[ $MONSTER = 1 && $DEVIL = 2 ]]; then 
        echo "Devil, You have selected $DEVILWEAPON"
        echo "The Monster has selected $MONSTERWEAPON"
        echo "Congrats Devil, You defeated the Monster"
    elif [[ $MONSTER = 2 && $DEVIL = 0 ]]; then
        echo "Devil, You have selected $DEVILWEAPON"
        echo "The Monster has selected $MONSTERWEAPON"
        echo "Congrats Devil, You defeated the Monster"
    elif [[ $MONSTER = 2 && $DEVIL = 1 ]]; then
        echo "Devil, You have selected $DEVILWEAPON"
        echo "The Monster has selected $MONSTERWEAPON"
        echo "sorry Devil, The Monster defeated You"
    else
        echo "Please Select valid option"
    fi
}

beastbattle