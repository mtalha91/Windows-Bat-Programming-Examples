@echo game
@echo 1:press y to type the name and start the game 
@echo 2:press n to exit
set /p value=
if %value% == y goto nam
if %value% == n goto exit
goto nam
:nam
cls
@echo type your name player
set /p name=
@echo welcome %name%

@echo what is 10+10 ?
set /p ans=
if %ans% == 20 goto win
goto loose

:win
@echo you win
goto exit

:loose
@echo you loose

:exit
pause

