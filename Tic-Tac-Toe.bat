@echo off
title Tic-Tac-Toe
color 0F
:menu
echo 			=======================
echo 			Welcome to Tic-Tac-Toe!
echo 			=======================
echo ========
echo 1) Play
echo ========
echo 2) Help
echo ========
echo 3) Exit
echo ========
set /p menu= 
if %menu% equ 1 goto start
if %menu% equ 2 goto help
if %menu% equ 3 exit
if %menu% neq 1 goto menu
:help
cls 
echo.
echo It's Tic Tac Toe, are you an idiot?
echo.
pause
cls
echo.
echo All you have to do is follow the on screen commands.
echo.
pause
cls
goto menu
:start
cls
echo.
echo Hello player, 
echo.
echo What is your name?
echo.
set /p name=
cls
echo.
echo Welcome %name%, I am the Game Master
echo.
pause
:first select
cls
echo.
echo Please select your gamemode, %name%.
echo.
echo SINGLE-PLAYER or TWO-PLAYER?
echo.
set /p select=
if %select% equ SINGLE-PLAYER goto single
if %select% equ TWO-PLAYER goto double
if %select% neq SINGLE-PLAYER goto first select
:single
cls
echo.
echo Please select your difficulty, %name%,
echo.
echo EASY, MEDIUM, or HARD?
echo.
set /p difficulty=
if %difficulty% equ EASY goto play
if %difficulty% equ MEDIUM goto play
if %difficulty% equ HARD goto play
if %difficulty% neq EASY goto first select
:double
cls
echo.
echo What is the second player's name?
echo.
set /p name2=
echo.
cls
echo.
echo Welcome to the game, %name2%.
echo.
pause
goto play
:play
cls
