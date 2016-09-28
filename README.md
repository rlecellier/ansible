* set your hosts in hosts file
* set your variables in a vars/main.yml dir for each roles, see default/main.yml as examples
* execute setup.yml in checkmode : ansible-playbook -C setup.yml --check
* in order execute the playbook, you need to set check_mode variable to false
