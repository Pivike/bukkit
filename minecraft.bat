ECHO OFF
CLS

if[%1] = [] (
	GOTO ERROR
) ELSE (
	GOTO %1
)

:ERROR
	ECHO SZERVERINFÓK
	ECHO
	ECHO
	ECHO
	ECHO
GOTO END

:1.5.2
	ECHO A könyvtár kiválasztása...
	cs SERVER_%1
	ECHO A szerver indítása...
	java -Xmx1024M -jar craftbukkit.jar -o false
	ECHO A szerver leállt.
GOTO END

:END
	PAUSE
ECHO ON