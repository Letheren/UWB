readme.md:
	echo "# Project title : Guessing Game" > readme.md
	echo "date of creation of the readme.md file :" >> readme.md
	ls -l --time=ctime readme.md | egrep -o '[A-Z][a-z]{2}.[0-9]{2}.[0-9]{2}:[0-9]{2}' >> readme.md
	echo "number of lines in guessinggame.sh :" >> readme.md
	cat guessinggame.sh | wc -l >> readme.md
	echo "## thank you for the review fellow earthling!" >> readme.md
