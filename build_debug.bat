
set root_dir=%~dp0
set release_dir=%~dp0debug
set perl_dir=D:\tools\strawberry_x86_32\

if not exist %release_dir% mkdir %release_dir%
if not exist %release_dir%\bin mkdir %release_dir%\bin

REM call the standard Microsoft .bat for VC 6 setup. 
REM call 'C:/Program Files\Microsoft Visual Studio\VC98\Bin\Vcvars32.bat' 
REM call vc
REM Set debug to something if you want to compile in debug mode 
REM 如果你候想要统译release时，用set PEGASUS_DEBUG=false 是没有用的，必须删除这一行。
set PEGASUS_DEBUG=true
SET PEGASUS_BUILD_WMIMAPPER=
REM set PEGASUS_ROOT to top of source tree 
set PEGASUS_ROOT=%root_dir%pegasus
REM (Note: The '/' characters are intentional and required by the OpenPegasus build system). 
REM     Also the disk designator (C:) is required for at least some newer versions of the Microsoft
REM     compilers to avoid confusion between options and paths
REM set PEGASUS_HOME to where you want repository and executables, it can be the same as PEGASUS_ROOT
REM set PEGASUS_HOME=%PEGASUS_ROOT%
set PEGASUS_HOME=%release_dir%
REM set PEGASUS_PLATFORM for Windows
set PEGASUS_PLATFORM=WIN32_IX86_MSVC
REM setup the path to the runtime files. 
set PATH=%PATH%;%PEGASUS_HOME%\bin;%PEGASUS_ROOT%\tools;%perl_dir%\c\bin;%perl_dir%\perl\site\bin;%perl_dir%\perl\bin

echo build openslp...
SET PEGASUS_USE_OPENSLP=false
SET PEGASUS_EXTERNAL_SLP_HOME=%root_dir%openslp-2.0.0
cd %PEGASUS_EXTERNAL_SLP_HOME%
rem call msbuild "%root_dir%\openslp-2.0.0\win32\openslp.vs2017.sln" /m /t:Build /p:Configuration=Debug /p:Platform=Win32 /clp:NoSummary;NoItemAndPropertyList;Verbosity=minimal /nologo
@if errorlevel 1 goto failed
if not exist include mkdir include
@if errorlevel 1 goto failed
copy libslp\slp.h include\slp.h
@if errorlevel 1 goto failed
if not exist lib mkdir lib
@if errorlevel 1 goto failed
copy /Y win32\Win32\Debug\*.* lib\
@if errorlevel 1 goto failed
copy /Y lib\*.dll %release_dir%\bin\
@if errorlevel 1 goto failed

echo build sqlite3...
SET PEGASUS_USE_SQLITE_REPOSITORY=true
SET PEGASUS_SQLITE_HOME=%root_dir%/sqlite3
SET SQLITE_HOME=%root_dir%/sqlite3
cd %SQLITE_HOME%
LIB /DEF:sqlite3.def /MACHINE:IX86 /OUT:libsqlite3.lib
@if errorlevel 1 goto failed
copy /Y sqlite3.h include\sqlite3.h
@if errorlevel 1 goto failed
copy /Y libsqlite3.lib lib\libsqlite3.lib
@if errorlevel 1 goto failed
copy /Y *.dll %release_dir%\bin\
@if errorlevel 1 goto failed

echo build openssl...
SET PEGASUS_HAS_SSL=false
set OPENSSL_HOME=%root_dir%/openssl-1.0.1m
cd %OPENSSL_HOME%
rem call perl Configure VC-WIN32 no-asm --prefix=%OPENSSL_HOME%
@if errorlevel 1 goto failed
rem call ms\do_ms
@if errorlevel 1 goto failed
rem nmake -f ms\ntdll.mak
@if errorlevel 1 goto failed
rem nmake -f ms\ntdll.mak install
@if errorlevel 1 goto failed
copy /Y bin\*.dll %release_dir%\bin\
@if errorlevel 1 goto failed


cd %PEGASUS_ROOT%
set OPENSSL_CONF=%OPENSSL_HOME%/apps/openssl.cnf
make build
@if errorlevel 1 goto failed
echo build ok!
@cd %~dp0
@goto :eof

:failed
@cd %~dp0
echo build failed!
