#! /bin/bash

echo [$(date -u)]
echo Starting host machine setup...

# Create a network adapter on the host machine.
# By default, "vboxnet0" will be used to access the guest VMs.
VBoxManage hostonlyif create

echo [$(date -u)]
echo DONE!
echo ============================================================

echo [$(date -u)]
echo Starting guest machine setup...

# Check the options available for the appliance to be imported.
VBoxManage import $OVA_FILE --dry-run

# Specify the virtual machine name and accept the license agreement
# to avoid the "Cannot import until the license agreement is accepted" error.
# Please notice other options may be added to this command, based on
# the output from the previous one.
VBoxManage import $OVA_FILE --vsys 0 --vmname $VM_NAME --eula accept

# Add a second network interface to the guest machine. By default it has
# one interface, which is using NAT. Leave this alone as it provides access
# to the internet.
VBoxManage modifyvm $VM_NAME --nic2 hostonly --hostonlyadapter2 vboxnet0

# Start the VM.
# The --type option causes VirtualBox to use VBoxHeadless as the front-end
# to the internal virtualization engine, instead of the Qt front-end.
VBoxManage startvm $VM_NAME --type=headless

echo [$(date -u)]
echo DONE!
echo ============================================================
