for i in *.tar.gz	#gets all the files in the current directory with .tar.gz
do
	NAME=${i%.tar.gz}	#strips off the .tar.gz
	NAME2=${NAME##*$}	#strips off the prefix up to the last $ in the file name
	echo Extracting $i into folder $NAME2	#Show on screen what is going on
	tar -xvzf "$i" --owner processor --group processor --no-same-owner --xform="s|^|$NAME2/|S"          #run tar extraction assigning certain rights and not worrying about original owner into the folder named $NAME2
done
