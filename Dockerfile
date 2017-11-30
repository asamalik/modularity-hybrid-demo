from fedora:27

# Add two repositories:
#   modular-dnf.repo  -  DNF with Modularity support
#   modules.repo      -  Modules
copy files/*.repo /etc/yum.repos.d/

# Add a system profile
copy files/*.defaults /etc/dnf/modules.defaults.d/

# Install the DNF with Modularity support
run dnf -y install dnf-2.7.5-1.fc27.modularity.1.c5b0496.noarch && \
    dnf clean all

# Gimme my shell, baby!
cmd /bin/bash
