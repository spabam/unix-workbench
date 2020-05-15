#!/bin/bash
# Andrea Bodei 2020-05-15-04:18 info@andreabodei.com
clear
realnum=$(ls | wc | awk '{print $1}')
# function just to check the user writes a number
function checkinteger () {
clear && echo 'Sorry integers only'
exit
}
# function just to ask again to guess a number
function tryguess () {
echo '
how many files are in the current directory'
read guessnum
}
#starting
tryguess
	if ! [[ "$guessnum" =~ ^[0-9]+$ ]]; then
	checkinteger
	fi
while [ $guessnum -ne $realnum ]; do
	if ! [[ "$guessnum" =~ ^[0-9]+$ ]]; then
	checkinteger
	fi
	if [[ "$guessnum" -gt "$realnum" ]]; then
		echo 'your guess was too high'
	fi
	if [[ "$guessnum" -lt "$realnum" ]]; then
		echo 'your guess was too low'
	fi
	tryguess
done
# if is all ok the user ends here
echo 'Congratulation! The answer is correct'
exit

#EOF
