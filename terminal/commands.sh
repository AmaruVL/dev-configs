# ~/.zshrc o ~/.bashrc

# Ranger: abre y vuelve al último directorio al salir
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=$(<"$HOME/.rangerdir"); cd "$LASTDIR"'
