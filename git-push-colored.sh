#!/bin/bash

C_RESET='\033[0m'
C_RED='\033[0;31m'
C_GREEN='\033[0;32m'
C_BLUE='\033[0;34m'
C_YELLOW='\033[1;33m'

# println echos string
function println() {
  echo -e "$1"
}

if [ ! $1 ]; then
	println "Usage:"
	println "   $0 ${C_GREEN}<commit-message>${C_RESET}"
	println ""
	println "Examples:"
	println "   $0 ${C_GREEN}minors${C_RESET}"
	println "   $0 ${C_GREEN}'minor changes'${C_RESET}"
	exit 0
fi

git add .
git status
if [ "$1" > /dev/null ]; then
	git commit -m "$1"
	git push 
  git status
fi

