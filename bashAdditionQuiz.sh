#!/bin/bash 

yourscore=0

totalright=0
totalwrong=0


echo -e "\n\n WELCOME TO THE BASH ADDITION QUIZ!\n\n"

sleep 1

cat <<EOF

    You will be served one question at a time, and every correct answer gets one point, every incorrect loses one point, enter an answer other than a valid number, and the program exits and displays your score


EOF

echo -e "\n"

read -p "Enter the highest number to reach    " y

echo -e "\n"

while true; do
    randX=$(shuf -i 0-$y -n 1)
    randY=$(shuf -i 0-$y -n 1)
    result=$((randX + randY))
    read -p "Guess the result of $randX + $randY     " yourGuess
    if [ "$result" -eq "$yourGuess" ]; then
        echo -e "\nCorrect Answer : 1 point!\n"
        ((yourscore++))
        ((totalright++))
    elif [ "$yourGuess" -eq "$yourGuess" -a "$yourGuess" -ne "$result" ]; then
        echo -e "\nIncorrect Answer : -1 point!\n"
        ((yourscore--))
        ((totalwrong++))
    else
        break
    fi
done

cat << EOF

    Your score was : $yourscore

    # RIGHT : $totalright

    # WRONG : $totalwrong


EOF
