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
call :displayText "It's Tic Tac Toe, are you an idiot?"
pause
call :displayText "All you have to do is follow the on screen commands."
pause
cls
goto menu
:displayText
cls
echo.
echo %~1%
goto:EOF
:drawBoard
pause
cls
echo.
echo.
echo.
echo  1 I 2 I 3
echo ___________
echo.
echo  4 I 5 I 6
echo ___________
echo.
echo  7 I 8 I 9
echo.
echo.
echo Where would you like to move (1-9)?
set /p selection=
goto:EOF
:checkForWinner
goto:EOF
:start
call :displayText "Hello player!" & echo. & echo.What is your name?
echo.
set /p name=
call :displayText "Welcome %name%, I am the Game Master"
pause
:first select
cls
echo.
echo Please select your gamemode, %name%.
echo.
echo Enter '1' for SINGLE-PLAYER or '2' for TWO-PLAYER
echo.
set /p select=
if %select% equ 1 goto single
if %select% equ 2 goto double
if %select% neq 1 goto first select
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
call :drawBoard
pause
echo Hello
pause
