::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAhRXBCbAES0A5EO4f7+086IoVgQUewra7Pp37+DJeQk70fAcIYh2WM6
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Web Rekam Medis Installer
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
set color_white=%ESC%[37m
set color_black=%ESC%[30m
echo(

:ssh-setup
echo ----- SSH Remote Access -----
set /p user=User: 
set /p host=Host IP: 
set /p password=Password: %color_black%
echo %color_white%
set /P confirm=Are you sure want to connect to %user%@%host% (Y/[N])?
echo -----------------------------
IF /I "%confirm%" NEQ "Y" GOTO ssh-setup
GOTO start-setup

:start-setup
echo Clearing /var/www/html/websource directory
plink %user%@%host% -pw %password% (cd /var/www/html; rm -r -f websource/)
echo Creating new directory /var/www/html/websource
plink %user%@%host% -pw %password% (mkdir /var/www/html/websource)
pause