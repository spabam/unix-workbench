README.md:
	echo 'TITLE:' > README.md
	echo 'Coursera Project' >> README.md
	echo '' >> README.md
	echo 'Time and date:' >> README.md
	date >> README.md
	echo '' >> README.md
	echo 'Lines of code:' >> README.md
	wc -l  guessinggame.sh >> README.md
   
clean:
	echo 'nothing to clean here'
