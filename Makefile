.PHONY: compile print_console execute

.DEFAULT_GOAL = execute

# Définition de la fonction echoln qui affiche du texte suivi d'un retour à la ligne
echoln = @echo "$(1)"; echo ""

compile: learn.exe

# Utilisation de la fonction echoln avec $(call)
print_console: learn.exe
	$(call echoln,Execution de l'executable...)

learn.exe: learn.c
	$(call echoln,Verifier si la compilation est necessaire...)
	@gcc -o learn learn.c

execute: compile print_console
	@./learn
