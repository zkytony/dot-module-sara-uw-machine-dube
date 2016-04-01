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
dot_link_config_sys "etc/ssh/sshd_config"

# Done
print_status "Done!"


## -------------------------------------------------------------
## Done!
## -------------------------------------------------------------
. "$dot_shell/install_module_footer.sh"
