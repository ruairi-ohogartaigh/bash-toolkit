# WhatPackageMnger
This is a basic script that used `uname -a` to find the distro in use. It then compares the output to the list of distros in `distro.csv`.
To call the script, you need to be cd'd into the `WhatPackageMnger`, alternatively you could make distro.csv a varaible in `.bashrc` where it points to the fill directory path.


## Limitations
At present it only supports Fedora and Ubuntu, This will probably expand as I continue distro hopping. 

## Example
My Daily drive in early summer 2025 is Fedora 42. So If I run this script the following package managers will be recommended:
- dnf (dandified yum)
- yum (yellow dog utility manager)
- rpm (red hat package manager)