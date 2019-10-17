# Microsoft Developer Studio Project File - Name="PegWQL" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=PegWQL - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "PegWQL.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "PegWQL.mak" CFG="PegWQL - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "PegWQL - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "PegWQL - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "PegWQL - Win32 Release"

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
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGWQL_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /I "$(PEGASUS)\src" /D "NDEBUG" /D "PEGASUS_INTERNALONLY" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGWQL_EXPORTS" /D "PEGASUS_PLATFORM_WIN32_IX86_MSVC" /D "PEGASUS_WQL_INTERNAL" /YX /FD /c
# SUBTRACT CPP /Fr
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

!ELSEIF  "$(CFG)" == "PegWQL - Win32 Debug"

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
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGWQL_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "$(PEGASUS)\src" /I "$(PEGASUS)\src\Pegasus\WQL\nt_includes" /D "_DEBUG" /D "PEGASUS_INTERNALONLY" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGWQL_EXPORTS" /D "PEGASUS_PLATFORM_WIN32_IX86_MSVC" /D "PEGASUS_WQL_INTERNAL" /D "PEGASUS_MEMORY_DEBUG" /D "PEGASUS_USE_EXPERIMENTAL_INTERFACES" /FR /YX /FD /GZ /c
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

# Name "PegWQL - Win32 Release"
# Name "PegWQL - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\WQLInstancePropertySource.cpp
# End Source File
# Begin Source File

SOURCE=..\WQLLEX.cpp
# End Source File
# Begin Source File

SOURCE=..\WQLOperand.cpp
# End Source File
# Begin Source File

SOURCE=..\WQLOperation.cpp
# End Source File
# Begin Source File

SOURCE=..\WQLParser.cpp
# End Source File
# Begin Source File

SOURCE=..\WQLParserState.cpp
# End Source File
# Begin Source File

SOURCE=..\WQLPropertySource.cpp
# End Source File
# Begin Source File

SOURCE=..\WQLQueryExpressionRep.cpp
# End Source File
# Begin Source File

SOURCE=..\WQLSelectStatement.cpp
# End Source File
# Begin Source File

SOURCE=..\WQLSimplePropertySource.cpp
# End Source File
# Begin Source File

SOURCE=..\WQLYACC.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\Linkage.h
# End Source File
# Begin Source File

SOURCE=..\WQLInstancePropertySource.h
# End Source File
# Begin Source File

SOURCE=..\WQLOperand.h
# End Source File
# Begin Source File

SOURCE=..\WQLOperation.h
# End Source File
# Begin Source File

SOURCE=..\WQLParser.h
# End Source File
# Begin Source File

SOURCE=..\WQLParserState.h
# End Source File
# Begin Source File

SOURCE=..\WQLPropertySource.h
# End Source File
# Begin Source File

SOURCE=..\WQLQueryExpressionRep.h
# End Source File
# Begin Source File

SOURCE=..\WQLSelectStatement.h
# End Source File
# Begin Source File

SOURCE=..\WQLSimplePropertySource.h
# End Source File
# Begin Source File

SOURCE=..\WQLYACC.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
