#!/bin/bash
COURSE="Devops from current script"

echo "Before calling the script :$COURSE"
echo "process id of the current script : $$"
source ./otherscript.sh
echo "After callimg the script:$COURSE"
