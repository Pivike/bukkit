ECHO OFF
CLS

if[%1] = [] (
	GOTO ERROR
) ELSE (
	GOTO %1
)

:ERROR
	ECHO A szerver inditasahoz szukseges tennivalok:
	ECHO 1 - Hozz letre errol a file-ról egy parancsikont az asztelon.
	ECHO 2 - Az ikonra kattints jobb gombal, es a tulajdonsagait nyitsd meg.
	ECHO 3 - A "Cel:" mezoben a szoveg moge ird be (egy SPACE utan) a szerver verziot.
	ECHO 4 - Alkalmazd a valtozasokat, es kattints az ikonra hogyy elinduljon a szerver.
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