#!/system/bin/sh
logdir="cplogs"

mounts=`mount`
timeout=0

while [[ $mounts != */dev/block/vold/* ]]; do
    echo "cplogd: SD card not ready yet!" > /dev/kmsg

    if [ $timeout -gt 20 ];then
    echo "cplogd: SD card state check timeout!" > /dev/kmsg
    exit 
    fi

    sleep 5
    ((timeout++))

    mounts=`mount`
done

#Spit to get the name of mount point
OLD_IFS="$IFS" 
#delimiter
IFS=" "   
words=(${mounts##*dev/block/vold*/mnt/})   
IFS="$OLD_IFS"

#full path 
logpath="/mnt/${words[0]}"

#log file name
logfile=`date "+%Y%m%d_%H%M%S"`

#save log to sdcard
if [ ! -d "$logpath/$logdir" ]; then
    mkdir $logpath/$logdir
fi

echo "cplogd: start dump cplog .. " > /dev/kmsg

cat /dev/vbpipe0 > "$logpath/$logdir/$logfile.log" &

