# To clear all the history and screen
alias hcl='history -c; clear'

# List paths
alias path='echo -e ${PATH//:/\\n}'

# System update
apt-up() {
   sudo apt-get update
   sudo apt-get dist-upgrade
}

srvrestart() {
   sudo service $1 restart
}
srvstart() {
   sudo service $1 start
}
srvstop() {
   sudo service $1 stop
}

# KVM
alias lsvm='virsh list --all'
vmstart() {
   virtsh start $1
}
vmreboot() {
   virsh reboot $1
}

# Filesystem diskspace usage
alias dus='df -h'
