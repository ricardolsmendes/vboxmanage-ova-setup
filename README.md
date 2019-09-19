# vboxmanage-ova-setup
Shell scripts to setup Oracle VirtualBox OVA-based virtual machines using only the VBoxManage CLI.

## Environment setup

```bash
export OVA_FILE=<PATH-TO-OVA-FILE>
export VM_NAME=<VIRTUAL-MACHINE-NAME>

chmod +x setup-vm.sh
```

## Setup a Virtual Machine

The host machine will communicate with it through a _vboxnet0_ netword interface.

```bash
sh setup-vm.sh
```
