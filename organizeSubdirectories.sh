Exercicio 2

#!/bin/bash
find $1 -type f > ~/scripts/scrp.txt
declare -a extensions
mapfile -t extensions < ~/scripts/scrp.txt 
for filePath in "${extensions[@]}"; do
	extension="${filePath##*.}"
	mkdir -p "$1/$extension"
	cd $1 && mv $1/*.$extension "$1/$extension/"
done
