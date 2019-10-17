# Microsoft Developer Studio Project File - Name="PegConfig" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=PegConfig - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "PegConfig.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "PegConfig.mak" CFG="PegConfig - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "PegConfig - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "PegConfig - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "PegConfig - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "c:\PegasusRun\vs6bin"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGCONFIG_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /GX /O2 /D "NDEBUG" /D "PEGASUS_INTERNALONLY" /D "PEGASUS_PLATFORM_WIN32_IX86_MSVC" /D "PEGASUS_CONFIG_INTERNAL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGCONFIG_EXPORTS" /FR /YX /FD /c
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

!ELSEIF  "$(CFG)" == "PegConfig - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "c:\PegasusRun\vs6bin"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGCONFIG_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /GX /ZI /Od /I "$(PEGASUS)\src" /D "_DEBUG" /D "PEGASUS_INTERNALONLY" /D "PEGASUS_PLATFORM_WIN32_IX86_MSVC" /D "PEGASUS_CONFIG_INTERNAL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGCONFIG_EXPORTS" /D "PEGASUS_MEMORY_DEBUG" /D "PEGASUS_USE_EXPERIMENTAL_INTERFACES" /FR /YX /FD /GZ /c
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

# Name "PegConfig - Win32 Release"
# Name "PegConfig - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\ConfigExceptions.cpp
# End Source File
# Begin Source File

SOURCE=..\ConfigFile.cpp
# End Source File
# Begin Source File

SOURCE=..\ConfigFileHandler.cpp
# End Source File
# Begin Source File

SOURCE=..\ConfigManager.cpp
# End Source File
# Begin Source File

SOURCE=..\ConfigPropertyOwner.cpp
# End Source File
# Begin Source File

SOURCE=..\DefaultPropertyOwner.cpp
# End Source File
# Begin Source File

SOURCE=..\FileSystemPropertyOwner.cpp
# End Source File
# Begin Source File

SOURCE=..\LogPropertyOwner.cpp
# End Source File
# Begin Source File

SOURCE=..\RepositoryPropertyOwner.cpp
# End Source File
# Begin Source File

SOURCE=..\SecurityPropertyOwner.cpp
# End Source File
# Begin Source File

SOURCE=..\ShutdownPropertyOwner.cpp
# End Source File
# Begin Source File

SOURCE=..\TracePropertyOwner.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\ConfigExceptions.h
# End Source File
# Begin Source File

SOURCE=..\ConfigFile.h
# End Source File
# Begin Source File

SOURCE=..\ConfigFileDir.h
# End Source File
# Begin Source File

SOURCE=..\ConfigFileHandler.h
# End Source File
# Begin Source File

SOURCE=..\ConfigManager.h
# End Source File
# Begin Source File

SOURCE=..\ConfigPropertyOwner.h
# End Source File
# Begin Source File

SOURCE=..\DefaultPropertyOwner.h
# End Source File
# Begin Source File

SOURCE=..\DefaultPropertyTable.h
# End Source File
# Begin Source File

SOURCE=..\FileSystemPropertyOwner.h
# End Source File
# Begin Source File

SOURCE=..\FixedPropertyTable.h
# End Source File
# Begin Source File

SOURCE=..\Linkage.h
# End Source File
# Begin Source File

SOURCE=..\LogPropertyOwner.h
# End Source File
# Begin Source File

SOURCE=..\RepositoryPropertyOwner.h
# End Source File
# Begin Source File

SOURCE=..\SecurityPropertyOwner.h
# End Source File
# Begin Source File

SOURCE=..\ShutdownPropertyOwner.h
# End Source File
# Begin Source File

SOURCE=..\TracePropertyOwner.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
