
@echo off
>nul chcp 65001
SETLOCAL ENABLEDELAYEDEXPANSION

echo ---------------------------------- VOTRE VERSION DE WINDOWS EST ----------------------------------
wmic os get caption
echo --------------------------------------------------------------------------------------------------
echo.
echo 1. Activer Windows Classique (Home ou Pro)
echo 2. Activer Windows Serveur (2012, 2016, 2019 ou 2022)
echo 3. Activer Office (Volume uniquement - NON DISPONIBLE POUR LE MOMENT)
echo 4. Quitter


:question
set /p choice=Que voulez-vous activer ? (1, 2, 3 ou 4 pour quitter) :

if /I "%choice%"=="1" (goto :A)
if /I "%choice%"=="2" (goto :B)
if /I "%choice%"=="3" (goto :C)
if /I "%choice%"=="4" (goto :end)
goto question

:A
cls
echo Voulez-vous activer cette version de Windows ? (Appuyer sur une touche pour continuer)
FOR /F "tokens=* USEBACKQ" %%F IN (`WMIC OS Get caption`) DO (
  SET var!count!=%%F
  SET /a count=!count!+1
)
set /p OSType=%var2%
set SearchString=Pro
If /I Not "%OSType%"=="!OSType:%SearchString%=!" (goto :WinPro) else (goto :WinHome)

:WinPro
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto WinProActivate)
)
:WinProActivate
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:WinHome
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto WinHomeActivate)
)
:WinHomeActivate
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:B
cls
echo Voulez-vous activer cette version de Windows ? (Appuyer sur une touche pour continuer)
FOR /F "tokens=* USEBACKQ" %%F IN (`WMIC OS Get caption`) DO (
  SET var!count!=%%F
  SET /a count=!count!+1
)
set /p OSType=%var2%
set SearchString=R2 Datacenter
If /I Not "%OSType%"=="!OSType:%SearchString%=!" (goto :WinR2D)
set SearchString=R2
If /I Not "%OSType%"=="!OSType:%SearchString%=!" (goto :WinR2)
set SearchString=2012
If /I Not "%OSType%"=="!OSType:%SearchString%=!" (goto :Win2012)
set SearchString=2012 Datacenter
If /I Not "%OSType%"=="!OSType:%SearchString%=!" (goto :Win2012D)
set SearchString=2016
If /I Not "%OSType%"=="!OSType:%SearchString%=!" (goto :Win2016)
set SearchString=2016 Datacenter
If /I Not "%OSType%"=="!OSType:%SearchString%=!" (goto :Win2016D)
set SearchString=2019
If /I Not "%OSType%"=="!OSType:%SearchString%=!" (goto :Win2019)
set SearchString=2019 Datacenter
If /I Not "%OSType%"=="!OSType:%SearchString%=!" (goto :Win2019D)
set SearchString=2022
If /I Not "%OSType%"=="!OSType:%SearchString%=!" (goto :Win2022)
set SearchString=2022 Datacenter
If /I Not "%OSType%"=="!OSType:%SearchString%=!" (goto :Win2022D)

:WinR2D
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto WinR2DActivate)
)
:WinR2DActivate
cscript //B "%windir%\system32\slmgr.vbs" /ipk W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:WinR2
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto WinR2Activate)
)
:WinR2Activate
cscript //B "%windir%\system32\slmgr.vbs" /ipk D2N9P-3P6X9-2R39C-7RTCD-MDVJX
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:Win2012D
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto Win2012DActivate)
)
:Win2012DActivate
cscript //B "%windir%\system32\slmgr.vbs" /ipk 48HP8-DN98B-MYWDG-T2DCC-8W83P
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:Win2012
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto Win2012Activate)
)
:Win2012Activate
cscript //B "%windir%\system32\slmgr.vbs" /ipk BN3D2-R7TKB-3YPBD-8DRP2-27GG4
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:Win2016
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto Win2016Activate)
)
:Win2016Activate
cscript //B "%windir%\system32\slmgr.vbs" /ipk WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:Win2016D
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto Win2016DActivate)
)
:Win2016DActivate
cscript //B "%windir%\system32\slmgr.vbs" /ipk CB7KF-BWN84-R7R2Y-793K2-8XDDG
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:Win2019
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto Win2019Activate)
)
:Win2019Activate
cscript //B "%windir%\system32\slmgr.vbs" /ipk N69G4-B89J2-4G8F4-WWYCC-J464C
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:Win2019D
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto Win2019DActivate)
)
:Win2019DActivate
cscript //B "%windir%\system32\slmgr.vbs" /ipk WMDGN-G9PQG-XVVXX-R3X43-63DFG
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:Win2022
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto Win2022Activate)
)
:Win2022Activate
cscript //B "%windir%\system32\slmgr.vbs" /ipk VDYBN-27WPP-V4HQT-9VMD4-VMK7H
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:Win2022D
echo Veuillez patienter... [■         ] Lancement de l'activation..
cscript //B "%windir%\system32\slmgr.vbs" /skms kms.assurmer.fr:19688
cls
echo Veuillez patienter... [■■■       ] 25%%
for /L %%a in (1,1,60) do (
  ping kms.assurmer.fr -4 -n 1 | find /i "temps=" > nul
  if ErrorLevel 1 (echo Connexion échouée, veuillez réessayez
pause
goto end) else (goto Win2022DActivate)
)
:Win2022DActivate
cscript //B "%windir%\system32\slmgr.vbs" /ipk WX4NM-KYWYW-QJJR4-XV3QB-6VM33
cls
echo Veuillez patienter... [■■■■■     ] 50%%
cscript //B "%windir%\system32\slmgr.vbs" /ato
cls
echo Veuillez patienter... [■■■■■■■   ] 75%%
cscript //B "%windir%\system32\slmgr.vbs" /xpr
cls
echo Veuillez patienter... [■■■■■■■■■] 100%%
msg * "Activation terminée !"
pause
goto end

:C
cls
echo Vous avez choisi d'activer Office.
pause
goto end

:end
exit