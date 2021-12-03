all:note.osc ~/doc/osc/*.osc note_wrap.tex
	osccompiler note.osc note.tex
	mkpdflatex note_wrap 
	mv note_wrap.pdf view.pdf
	printf "\033[1;32mSUCESS \033[0m "

auto:
	echo "note.osc" | entr -c make all 
	

