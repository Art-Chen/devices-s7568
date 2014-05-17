#!/system/bin/sh

term="/dev/pts/* "

if [ "$1" = "-d" ]; then
	lname=`getprop sys.symlink.data_router`
	#remove link first
	rm ${lname##${term}}	
	ln -s $lname; 
elif [ "$1" = "-c" ]; then
	lname=`getprop sys.symlink.chnpty`
	rm ${lname##${term}}	
	ln -s $lname; 
	setprop sys.symlink.notify 0
fi


