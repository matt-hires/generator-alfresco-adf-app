#  Modified ADF application generator for Yeoman

This is a mod of the original Alfresco ADF application for yeoman which works also for Windows. 

## Pre-Requisites

* Powershell >=5.1
* Node/Npm Installation

## Powershell usage 

### Installation
Open a powershell and run the script `install.ps1` in the current directory:

```
.\install.ps1
```

#### Security-Issues

Please be aware that there might be a problem with powershell script execution policies.
If so, set these to `RemoteSigned` for local execution.

```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```

```
Get-ExecutionPolicy -List

Scope ExecutionPolicy
----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser       Undefined
 LocalMachine    RemoteSigned
 ```

See: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-5.1
