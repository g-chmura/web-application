echo starting showtasks.bat
echo running runcrud.bat
call runcrud.bat
if "%ERRORLEVEL%" == "0" goto startlocalhost
echo Cannot run runcrud.bat
goto fail

:startlocalhost
START chrome "http://localhost:8090/crud/v1/task/getTasks"
if "%ERRORLEVEL%" == "0" goto end
echo Cannot open your browser.
goto fail

:fail
echo There were errors.

:end
echo Work is finished.