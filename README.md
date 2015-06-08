# Bash Script For Command Monitoring

A bash script that will monitor the execution of a command or a process. It will automatically start the command/process if it exits abruptly.

Two files are provided with this repo

1. **multipleInstances.sh**
This code monitors the multiple instances of the same command/process. The `TOTAL=15` is the point where the count of the instances of the process is maintained.
2. **singleInstance.sh**
This code restarts the command as soon as it exits.

### Usage

To use the scripts the execution path must be provided in the **crontab** as follow or any of your way.
I prefer to modify my **/etc/crontab** file

  ```
  #Script check comment
  * * * * * root cd /var/shellScripts/sample && ./singleInstance.sh
  * * * * * root cd /var/shellScripts/sample && ./multipleInstances.sh
  ```
