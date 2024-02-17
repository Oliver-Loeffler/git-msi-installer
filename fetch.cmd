@ECHO OFF
SET SOURCE_URL=https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/PortableGit-2.43.0-64-bit.7z.exe
ECHO.
ECHO Downloading from: %SOURCE_URL%
curl -L -O -# %SOURCE_URL%
ECHO.
ECHO Expected SHA256: 
ECHO c76216d032685fa972d129eca30f8c9fb957eb9f46ccbce954e70e07d6211961
ECHO.
CertUtil -hashfile PortableGit-2.43.0-64-bit.7z.exe SHA256
ECHO.
ECHO.
ECHO Downloading images...
curl -L -O -# https://git-scm.com/images/logos/downloads/Git-Icon-1788C.svg
curl -L -O -# https://git-scm.com/images/logos/downloads/Git-Logo-2Color.svg
curl -L -O -# blob:https://github.com/0ce2a651-9134-49c7-af39-ceff26820c13