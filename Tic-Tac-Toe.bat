@echo off
title Tic-Tac-Toe
color 0F
set box1=
set box2=
set box3=
set box4=
set box5=
set box6=
set box7=
set box8=
set box9=
:menu
call :displayText " 			=======================" & echo.  			Welcome to Tic-Tac-Toe! & echo.  			======================= & echo.  ========= & echo.   1) Play & echo.  ========= & echo.   2) Help & echo.  ========= & echo.   3) Exit & echo.  ========= & echo.
set /p menu= 
if %menu% equ 1 goto start
if %menu% equ 2 goto help
if %menu% equ 3 exit
if %menu% neq 1 goto menu
:displayText
cls
echo.
echo %~1%
goto:EOF
:help
call :displayText " It's Tic Tac Toe, are you an idiot?" & echo.
pause
call :displayText " All you have to do is follow the on screen commands." & echo.
pause
cls
goto menu
:start
call :displayText " Hello player!" & echo. & echo. What is your name? & echo.
set /p name=
call :displayText " Welcome %name%, I am the Game Master" & echo. & echo.
pause
:firstSelect
call :displayText " Please select your gamemode, %name%." & echo. & echo. ================== & echo.  1) Single Player & echo. ================== & echo.  2) Two Player & echo. ================== & echo.
set /p select=
if %select% equ 1 goto single
if %select% equ 2 goto double
if %select% neq 1 goto firstSelect
:single
call :displayText " Please select your difficulty, %name%." & echo. & echo. =========== & echo.  1) Easy & echo. =========== & echo.  2) Medium & echo. =========== & echo.  3) Hard & echo. =========== & echo.
set /p difficulty=
if %difficulty% equ 1 goto play
if %difficulty% equ 2 goto play
if %difficulty% equ 3 goto play
if %difficulty% neq 1 goto single
:double
call :displayText " What is the second player's name?" & echo.
set /p name2=
echo.
call :displayText " Welcome to the game, %name2%." & echo. & pause
goto play
:play
cls
call :drawBoard
pause
:drawBoard
cls
echo.
echo.
echo.
echo                 %box7%  I %box8%  I %box9%
echo                -----------
echo                 %box4%  I %box5%  I %box6%
echo                -----------
echo                 %box1%  I %box2%  I %box3%
echo.
echo.
echo    Where would you like to move (1-9)?
echo.
echo                   7 8 9
echo                   4 5 6
echo                   1 2 3
set /p move=
if %move% equ 1
if %move% equ 2
if %move% equ 3
if %move% equ 4
if %move% equ 5
if %move% equ 6
if %move% equ 7
if %move% equ 8
if %move% equ 9
if %move% neq 1 goto play
goto:EOF
:checkForWinner
goto:EOF