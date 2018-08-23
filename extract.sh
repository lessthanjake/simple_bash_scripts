for i in *.tar.gz
do
	NAME=${i%.tar.gz}
	NAME2=${NAME##*$}
	echo Extracting $i into folder $NAME2
	tar -xvzf "$i" --owner processor --group processor --no-same-owner --xform="s|^|$NAME2/|S"          #run command
done
