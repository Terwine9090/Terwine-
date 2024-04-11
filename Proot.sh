virgl_test_server_android &
unset LD_PRELOAD
cmdline="proot --link2symlink  ubuntu-fs -w /root -b /dev -b /proc -b /sys -b $PREFIX/tmp:/tmp -b /storage \
         /usr/bin/env -i HOME=/root TERM=$TERM PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games LANG=C.UTF-8 /bin/bash --login"
         
          
cmd="$@"
if [ "$#" == "0" ];then
    exec $cmdline
else
    $cmdline -c "$cmd"
fi
