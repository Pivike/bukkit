ECHO OFF
CLS

if[%1] = [] (
	GOTO ERROR
) ELSE (
	GOTO %1
)

:ERROR
	ECHO SZERVERINF�K
	ECHO
	ECHO
	ECHO
	ECHO
GOTO END

:1.5.2
	ECHO A k�nyvt�r kiv�laszt�sa...
	cs SERVER_%1
	ECHO A szerver ind�t�sa...
	java -Xmx1024M -jar craftbukkit.jar -o false
	ECHO A szerver le�llt.
GOTO END

:END
	PAUSE
ECHO ON