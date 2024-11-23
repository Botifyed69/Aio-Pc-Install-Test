@echo off 
cls
echo -- AIO PC INSTALLER TOOL --
echo Install All Apps/Drivers?
set /p Active=y/n: 
if %Active%==y goto Run
if %Active%==n goto Quit

:Quit
exit
:Run
start "" https://download.gigabyte.com/FileList/Driver/mb_driver_612_realtekdch_6.0.9235.1.zip?v=7fe824bcf96330be2c702339349d216d
winget Install "Discord.Discord"
winget Install "Nvidia.GeForceExperience"
winget Install "Corsair.iCUE.3 3.38.88"
winget Install "Valve.Steam"
winget Install "Bambulab.Bambustudio"