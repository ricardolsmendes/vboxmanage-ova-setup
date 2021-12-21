# vboxmanage-ova-setup

Shell script to setup an Oracle VirtualBox OVA-based virtual machine using the VBoxManage CLI.

## Get to know the concepts behind this code

[Set up a VirtualBox VM with 4 VBoxManage commands][1] @ Medium

## Environment setup

```sh
export OVA_FILE=<PATH-TO-OVA-FILE>
export VM_NAME=<VIRTUAL-MACHINE-NAME>

chmod +x setup-vm.sh
```

## Setup a Virtual Machine

The host machine will communicate with it through a _vboxnet0_ netword interface.

```sh
sh setup-vm.sh
```

## How to contribute

Please make sure to take a moment and read the [Code of
Conduct](https://github.com/ricardolsmendes/vboxmanage-ova-setup/blob/master/.github/CODE_OF_CONDUCT.md).

### Report issues

Please report bugs and suggest features via the [GitHub
Issues](https://github.com/ricardolsmendes/vboxmanage-ova-setup/issues).

Before opening an issue, search the tracker for possible duplicates. If you find a duplicate, please
add a comment saying that you encountered the problem as well.

### Contribute code

Please make sure to read the [Contributing
Guide](https://github.com/ricardolsmendes/vboxmanage-ova-setup/blob/master/.github/CONTRIBUTING.md)
before making a pull request.

[1]: https://medium.com/ci-t/set-up-a-virtualbox-vm-with-4-vboxmanage-commands-9266a5ee885d
