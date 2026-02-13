@echo off
color 05
title Otomatik Kapatma Sistemi

:menu
cls
echo =================================
echo    ZAMANLI KAPATMA MENUSU                         Project By.Yasin Eren KAYI
echo =================================
echo [1] Dakika cinsinden sure gir
echo [2] Saat cinsinden sure gir
echo [3] Bekleyen kapatma islemini IPTAL ET
echo [4] Cikis
echo =================================
set /p secim=Seciminizi yapin (1-4): 

if %secim%==1 goto dakikaModu
if %secim%==2 goto saatModu
if %secim%==3 goto iptalEt
if %secim%==4 exit

:dakikaModu
cls
echo =================================
set /p dk=Kac DAKIKA sonra kapansin?:      
                                                                                                         Project By.Yasin Eren KAYI       
:: Dakikayi 60 ile carpip saniyeye ceviriyoruz
set /a saniye=%dk%*60
goto komutuCalistir

:saatModu
cls
echo =================================
set /p sa=Kac SAAT sonra kapansin?: 
                                                                                                         Project By.Yasin Eren KAYI 
:: Saati 3600 ile carpip saniyeye ceviriyoruz
set /a saniye=%sa%*3600
goto komutuCalistir

:komutuCalistir
shutdown /s /t %saniye%
cls
echo =================================
echo ISLEM BASARILI!
echo Bilgisayar %saniye% saniye sonra kapanacak.
echo Iptal etmek isterseniz menuden 3'u secin.                         Project By.Yasin Eren KAYI
echo =================================
pause
goto menu

:iptalEt
shutdown /a >nul 2>&1
cls
echo =================================
echo Bekleyen tum kapatma islemleri IPTAL EDILDI.                         Project By.Yasin Eren KAYI
echo =================================
pause
goto menu