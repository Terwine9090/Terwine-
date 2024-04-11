unset LD_PRELOAD
cmdline="proot \
        --link2symlink \
        -0 \
        -r ubuntu \
        -b /dev \
        -b /proc \
        -b ubuntu/root:/dev/shm \
        -w /root \
           /usr/bin/env -i \
           HOME=/root \
           PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin \
           TERM=$TERM \
           LANG=C.UTF-8 \
           bash"
$cmdline
