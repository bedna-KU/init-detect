{ ls -l /proc/1/fd |grep -q systemd && echo "init: systemd"; } || \
{ ls -l /proc/1/fd |grep -q /run/initctl && echo "init: sysvinit"; } || \
{ ls -l /proc/1/fd |grep -q upstart && echo "init: upstart"; } || \
{ ls -l /proc/1/exe |grep -q busybox && echo "init: busybox"; } || \
echo "unknown init"
