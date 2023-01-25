## chmod :enable changing file owners & permissions, you need to edit /etc/wsl.conf and insert the below config options:

## step1,vi /etc/wsl.conf in WSL
```
sudo vi /etc/wsl.conf
```
## step2 add below config
```
[automount]
options = "metadata"
```
## step3,exit WSL, restarting WSL in windows command

```
wsl --shutdown
```
