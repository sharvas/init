# sysadmin 101

An introduction to systems, network administration and scripting. For details please check out the [subject](https://github.com/sharvas/init/raw/master/init.en.pdf).

The project consists of three parts:
* network
* system
* scripting

An example script to delete an active user:
```bash
echo "input a username to delete"
read name

if [ $(id -u $name) -gt 1000 ];then
	echo "--> locking $name account"
	passwd --lock $name
	echo "--> finding $name processes"
	pgrep -u $name
	echo "--> killing $name processes"
	pkill -9 -u $name
	echo "--> deleting user"
	deluser --remove-home $name
	echo "--> user $name deleted"
else
	echo "no real user: $name"
fi
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTU0MDQ5OTA0NCw5NjY0NDE2OTJdfQ==
-->