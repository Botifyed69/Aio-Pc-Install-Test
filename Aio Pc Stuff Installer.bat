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
start "" https://wolicheng.com/womic/downloads/WOMicClientSetup5_2.exe
start "" https://aka.ms/vs/16/release/vc_redist.x86.exe
echo Downloading Discord
winget Install "Discord.Discord"
cls
echo Downloading Gpu Drivers
winget Install "Nvidia.GeForceExperience"
cls
echo Downloading Cosair Aio Pump Control Software
winget Install "Corsair.iCUE.3 3.38.88"
cls
echo Downloading Steam
winget Install "Valve.Steam"
cls
echo Downloading Bambustudio
winget Install "Bambulab.Bambustudio"
cls
echo -- All Downloads Finished, Do Not Close This Window!! --
echo When All Downloads From Edge Are Installed Press y Then Enter To Restart
set /p Restart=Finished? 
if %Restart%==y goto RestartN

:RestartN
cls
shutdown /r