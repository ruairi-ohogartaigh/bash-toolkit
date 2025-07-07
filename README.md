# Bash Toolkit
This is a toolkit of Bash scripts, I have created it to improve my productivity on Linux. The idea came about when I started studying LPIC1 examination materials. I wanted a practical way of studying concepts like piping and regex whilst improving my over all knowledge in the CLI. 


<img src="./pictures/bashtoolkit.png" width="500">


## Info 
Here are some bash scripts that I've generated. All hold a functional purpose. 

### SHEBANG!!!
After writing out the shebang and chmod +x multiple times in one morning, I decided to create the `newbash.sh` script to automate shell generation and permission levels.

`./newbash.sh filename` (no .sh required; appended on generation)


### File permissions
I would usually advise against an automation script for editing permissions but in the toolkit every file is an executable.  `./loopDirPermissions.sh` is a script that does a blanket automation of permission levels in the folder.

### sysConfig/sys_alias_cfg.sh
Probably one of the most useful scripts in the folder. It checks the `.bashrc` for existing aliases and variables using `grep`, appending those that a missing. This helps configure new environments rapidly to my liking. Obviously, avoid putting sensitive info in the txt file if posting to a public repo.

### PhraseSwap
This is a more user friendly abstraction of `sed` with the  caveat of the delimiter `/`. If swapping a phrase containing `/` a different delimiter will be required, try `.` or `|` etc.

## Config
The files should remain executable once pulled from the repo (99.9% sure they should). I've create a bash script to edit the permissions for all bash files in the directory, either making all executable or making the permissions level an argument with function explaining:

    r (read) = 4
    w (write) = 2
    x (execute) = 1
    no permissions = 0
    
    `loopDirPermissions.sh`
    

## Conclusion 
These are some of the more practical bash scripts. I hope to expand my toolkit while in the process of becoming more literate in CLI built-ins. I think my next tool will be a script that checks the distro and recommends what package manager to use.  I'm also considering a script involving cron but I'm open to any suggestions.  
