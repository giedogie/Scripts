#!/bin/bash

#Color functions

terminalColorClear='\033[0m'
terminalColorEmphasis='\033[1;32m'
terminalColorError='\033[1;31m'
terminalColorMessage='\033[1;33m'
terminalColorWarning='\033[1;34m'

echoDefault() {
	echo -e "${terminalColorClear}$1${terminalColorClear}"
}

echoMessage() {
	echo -e "${terminalColorMessage}$1${terminalColorClear}"
}

echoWarning() {
	echo -e "${terminalColorWarning}$1${terminalColorClear}"
}

echoError() {
	echo -e "${terminalColorError}$1${terminalColorClear}"
}

