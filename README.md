# SysAdmin 101 - intro to systems and network administration

An introduction to systems and network administration plus scripting. For the details please check out the [subject](https://github.com/sharvas/init/raw/master/init.en.pdf).

The project consists of three parts:
* network - commands to find information about network configuration and modify it.
* system - basic system commands on a Debian machine.
* scripting - an intro to scripting.

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
