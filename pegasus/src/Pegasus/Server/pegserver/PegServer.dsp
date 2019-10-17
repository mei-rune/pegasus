# Microsoft Developer Studio Project File - Name="PegServer" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=PegServer - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "PegServer.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "PegServer.mak" CFG="PegServer - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "PegServer - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "PegServer - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "PegServer - Win32 Release"

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
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGSERVER_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /I "$(PEGASUS)\src" /D "NDEBUG" /D "PEGASUS_INTERNALONLY" /D "PEGASUS_PLATFORM_WIN32_IX86_MSVC" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGSERVER_EXPORTS" /D "PEGASUS_SERVER_INTERNAL" /YX /FD /c
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

!ELSEIF  "$(CFG)" == "PegServer - Win32 Debug"

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
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGSERVER_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "$(PEGASUS)\src" /D "_DEBUG" /D "PEGASUS_INTERNALONLY" /D "PEGASUS_PLATFORM_WIN32_IX86_MSVC" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "PEGSERVER_EXPORTS" /D "PEGASUS_SERVER_INTERNAL" /D "PEGASUS_MEMORY_DEBUG" /D "PEGASUS_USE_EXPERIMENTAL_INTERFACES" /FR /FD /GZ /c
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

# Name "PegServer - Win32 Release"
# Name "PegServer - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\BinaryMessageHandler.cpp
# End Source File
# Begin Source File

SOURCE=..\CIMOperationRequestAuthorizer.cpp
# End Source File
# Begin Source File

SOURCE=..\CIMOperationRequestDecoder.cpp
# End Source File
# Begin Source File

SOURCE=..\CIMOperationRequestDispatcher.cpp
# End Source File
# Begin Source File

SOURCE=..\CIMOperationResponseEncoder.cpp
# End Source File
# Begin Source File

SOURCE=..\CIMServer.cpp
# End Source File
# Begin Source File

SOURCE=..\CIMServerState.cpp
# End Source File
# Begin Source File

SOURCE=..\HTTPAuthenticatorDelegator.cpp
# End Source File
# Begin Source File

SOURCE=..\ProviderMessageFacade.cpp
# End Source File
# Begin Source File

SOURCE=..\QuerySupportRouter.cpp
# End Source File
# Begin Source File

SOURCE=..\reg_table.cpp
# End Source File
# Begin Source File

SOURCE=..\ShutdownProvider.cpp
# End Source File
# Begin Source File

SOURCE=..\ShutdownService.cpp
# End Source File
# Begin Source File

SOURCE=..\WQLOperationRequestDispatcher.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\BinaryMessageHandler.h
# End Source File
# Begin Source File

SOURCE=..\CIMOperationRequestAuthorizer.h
# End Source File
# Begin Source File

SOURCE=..\CIMOperationRequestDecoder.h
# End Source File
# Begin Source File

SOURCE=..\CIMOperationRequestDispatcher.h
# End Source File
# Begin Source File

SOURCE=..\CIMOperationResponseEncoder.h
# End Source File
# Begin Source File

SOURCE=..\CIMServer.h
# End Source File
# Begin Source File

SOURCE=..\CIMServerState.h
# End Source File
# Begin Source File

SOURCE=..\ConfigurationManager\ConfigurationManagerQueue.h
# End Source File
# Begin Source File

SOURCE=..\IndicationService\HandlerTable.h
# End Source File
# Begin Source File

SOURCE=..\HTTPAuthenticatorDelegator.h
# End Source File
# Begin Source File

SOURCE=..\IndicationService\IndicationService.h
# End Source File
# Begin Source File

SOURCE=..\ConfigurationManager\PG_RegistrationProvider.h
# End Source File
# Begin Source File

SOURCE=..\ProviderBlockedEntry.h
# End Source File
# Begin Source File

SOURCE=..\ProviderManager\ProviderBlockedEntry.h
# End Source File
# Begin Source File

SOURCE=..\ProviderManager\ProviderFacade.h
# End Source File
# Begin Source File

SOURCE=..\ProviderManager.h
# End Source File
# Begin Source File

SOURCE=..\ProviderManager\ProviderManagerQueue.h
# End Source File
# Begin Source File

SOURCE=..\ProviderMessageFacade.h
# End Source File
# Begin Source File

SOURCE=..\ProviderManager\ProviderModule.h
# End Source File
# Begin Source File

SOURCE=..\ProviderModule.h
# End Source File
# Begin Source File

SOURCE=..\PROVIDERREGISTRATIONMANAGER\PegPRM\ProviderRegistrationManager.h
# End Source File
# Begin Source File

SOURCE=..\PROVIDERREGISTRATIONMANAGER\PegPRM\ProviderRegistrationTable.h
# End Source File
# Begin Source File

SOURCE=..\QuerySupportRouter.h
# End Source File
# Begin Source File

SOURCE=..\reg_table.h
# End Source File
# Begin Source File

SOURCE=..\ShutdownExceptions.h
# End Source File
# Begin Source File

SOURCE=..\ShutdownProvider.h
# End Source File
# Begin Source File

SOURCE=..\ShutdownService.h
# End Source File
# Begin Source File

SOURCE=..\WQLOperationRequestDispatcher.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
