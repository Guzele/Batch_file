if "%1"=="" (
  echo Please execute main!
  pause
  GOTO EOF
)
cd %REPOFOLDER%
if exist %SOLUTIONFOLDER% RMDIR /S  %SOLUTIONFOLDER%

git clone %origin%  > %GITLOG%
if exist master\ MOVE master Geometric-task
cd %BUILDERFOLDER%
if ERRORLEVEL 1 (
  set GET_OK=0
) else (
  set GET_OK=1
)
:EOF