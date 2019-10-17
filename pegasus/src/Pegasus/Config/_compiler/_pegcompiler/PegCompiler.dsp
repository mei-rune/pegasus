# Microsoft Developer Studio Project File - Name="PegCompiler" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=PegCompiler - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "PegCompiler.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "PegCompiler.mak" CFG="PegCompiler - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "PegCompiler - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "PegCompiler - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "PegCompiler - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "c:\PegasusRun\vs6bin"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGCOMPILER_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /I "$(PEGASUS)\src" /I "$(PEGASUS)\src\Pegasus\compiler\nt_includes" /D "NDEBUG" /D "PEGASUS_INTERNALONLY" /D "PEGASUS_PLATFORM_WIN32_IX86_MSVC" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGCOMPILER_EXPORTS" /D "PEGASUS_COMPILER_INTERNAL" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386

!ELSEIF  "$(CFG)" == "PegCompiler - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "c:\PegasusRun\vs6bin"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGCOMPILER_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "$(PEGASUS)\src" /I "$(PEGASUS)\src\Pegasus\compiler\nt_includes" /D "_DEBUG" /D "PEGASUS_INTERNALONLY" /D "PEGASUS_PLATFORM_WIN32_IX86_MSVC" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGCOMPILER_EXPORTS" /D "PEGASUS_COMPILER_INTERNAL" /FR /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "PegCompiler - Win32 Release"
# Name "PegCompiler - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\cimmof_lex_wrapper.cpp
# End Source File
# Begin Source File

SOURCE=.\cimmof_tab_wrapper.cpp
# End Source File
# Begin Source File

SOURCE=.\cimmofClient.cpp
# End Source File
# Begin Source File

SOURCE=.\cimmofMessages.cpp
# End Source File
# Begin Source File

SOURCE=.\cimmofParser.cpp
# End Source File
# Begin Source File

SOURCE=.\cimmofRepository.cpp
# End Source File
# Begin Source File

SOURCE=.\cimmofRepositoryInterface.cpp
# End Source File
# Begin Source File

SOURCE=.\compilerDeclContext.cpp
# End Source File
# Begin Source File

SOURCE=.\objname.cpp
# End Source File
# Begin Source File

SOURCE=.\parser.cpp
# End Source File
# Begin Source File

SOURCE=.\qualifierList.cpp
# End Source File
# Begin Source File

SOURCE=.\valueFactory.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\cimmof_tab.h
# End Source File
# Begin Source File

SOURCE=.\cimmofClient.h
# End Source File
# Begin Source File

SOURCE=.\cimmofMessages.h
# End Source File
# Begin Source File

SOURCE=.\cimmofParser.h
# End Source File
# Begin Source File

SOURCE=.\cimmofRepository.h
# End Source File
# Begin Source File

SOURCE=.\cimmofRepositoryInterface.h
# End Source File
# Begin Source File

SOURCE=.\compilerCommonDefs.h
# End Source File
# Begin Source File

SOURCE=.\compilerDeclContext.h
# End Source File
# Begin Source File

SOURCE=.\memobjs.h
# End Source File
# Begin Source File

SOURCE=.\mofCompilerOptions.h
# End Source File
# Begin Source File

SOURCE=.\objname.h
# End Source File
# Begin Source File

SOURCE=.\parser.h
# End Source File
# Begin Source File

SOURCE=.\parserExceptions.h
# End Source File
# Begin Source File

SOURCE=.\qualifierList.h
# End Source File
# Begin Source File

SOURCE=.\valueFactory.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
