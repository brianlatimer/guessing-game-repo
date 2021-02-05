readme.md:
	touch readme.md
	echo "# Guessing Game Program" >> readme.md
	echo >> readme.md
	echo "A program by Brian Latimer" >> readme.md
	echo "This file was created on..." >>  readme.md
	date >> readme.md
	echo "The Guessing Game program contains..." >> readme.md 
	wc -l < guessinggame.sh >> readme.md 
	echo "...lines of code." >> readme.md
