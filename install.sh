#!/bin/sh

dot_shell=$(cd "${0%/*}/../../shell" && pwd); . "$dot_shell/install_module_header.sh"
dot_check_root # Check if we run as root
dot_check_ubuntu  # Are we on Ubuntu?
dot_check_virtualenv  # Check for virtualenv


## -------------------------------------------------------------
## Installation
## -------------------------------------------------------------

## -------------------------------------------------------------
print_header "Installing SSH Server Configuration"
dot_copy_config_sys "etc/ssh/sshd_config"
sudo chown root:root "/etc/ssh/sshd_config"
sudo chmod 644 "/etc/ssh/sshd_config"


## -------------------------------------------------------------
print_header "Installing Network Configuration"
dot_copy_config_sys "etc/network/interfaces"
sudo chown root:root "/etc/network/interfaces"
sudo chmod 644 "/etc/network/interfaces"

# Done
print_status "Done!"


## -------------------------------------------------------------
## Done!
## -------------------------------------------------------------
. "$dot_shell/install_module_footer.sh"
