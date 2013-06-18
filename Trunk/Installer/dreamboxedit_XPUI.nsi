;NSIS DreamBoxEdit Installer
;Written by the DreamBoxEdit Development Team

!define XPUI_WANSIS

!include "XPUI.nsh"

;--------------------------------
;General

  ;Name and file
  Name "DreamBoxEdit"
  OutFile "setup.exe"

  ;Custom settings
  Icon "${NSISDIR}\Contrib\Graphics\Icons\orange-install.ico"
  UninstallIcon "${NSISDIR}\Contrib\Graphics\Icons\orange-uninstall.ico"
  XPStyle on

  ;Default installation folder
  InstallDir "$PROGRAMFILES\DreamBoxEdit"

  ;Get installation folder from registry if available
  InstallDirRegKey HKCU "Software\DreamBoxEdit" ""

  ;Request application privileges for Windows Vista
  RequestExecutionLevel user

;--------------------------------
;Interface Configuration

  !define XPUI_HEADERIMAGE
  !define XPUI_HEADERIMAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Header\orange.bmp" ; optional
  !define XPUI_HEADERIMAGE_UNBITMAP "${NSISDIR}\Contrib\Graphics\Header\orange-uninstall.bmp" ; optional
  !define XPUI_ABORTWARNING
  !define XPUI_WELCOMEFINISHPAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Wizard\orange.bmp" ; optional

;--------------------------------
;Variables

  Var XPUI_TEMP
  Var STARTMENU_FOLDER

;--------------------------------
;Language Selection Dialog Settings

  ;Remember the installer language
  ;!define XPUI_LANGDLL_REGISTRY_ROOT "HKCU"
  ;!define XPUI_LANGDLL_REGISTRY_KEY "Software\DreamBoxEdit"
  ;!define XPUI_LANGDLL_REGISTRY_VALUENAME "Installer Language"

;--------------------------------
;Pages

  !insertmacro XPUI_PAGE_LICENSE "${NSISDIR}\Contrib\ExperienceUI\License.rtf"
  !insertmacro XPUI_PAGE_COMPONENTS
  !insertmacro XPUI_PAGE_DIRECTORY

  ;Start Menu Folder Page Configuration
  !define XPUI_STARTMENUPAGE_REGISTRY_ROOT "HKCU"
  !define XPUI_STARTMENUPAGE_REGISTRY_KEY "Software\Modern UI Test"
  !define XPUI_STARTMENUPAGE_REGISTRY_VALUENAME "Start Menu Folder"

  !insertmacro XPUI_PAGE_STARTMENU Application $STARTMENU_FOLDER

  !insertmacro XPUI_PAGE_INSTFILES
  !insertmacro XPUI_PAGE_FINISH

  !insertmacro XPUI_PAGE_INSTFILES
  !insertmacro XPUI_PAGE_FINISH
  !insertmacro XPUI_PAGE_ABORT

  !insertmacro XPUI_PAGEMODE_UNINST
  !insertmacro XPUI_PAGE_UNINSTCONFIRM_NSIS
  !insertmacro XPUI_PAGE_INSTFILES

;--------------------------------
;Languages

  !insertmacro XPUI_LANGUAGE "English"

;--------------------------------
;Installer Sections

Section "DreamBoxEdit" SecInstall

  SetOutPath "$INSTDIR"

  ;ADD YOUR OWN FILES HERE...
  FILE dreamboxedit.exe
  FILE DreamBoxEdit_English.chm
  FILE English.lng
  FILE Install_Language.txt
  FILE SatcoDX_TransTable.txt
  FILE Version_notes.txt

  ;Store installation folder
  WriteRegStr HKCU "Software\DreamBoxEdit" "" $INSTDIR

  ;Store uninstall info
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\DreamBoxEdit" \
                 "DisplayName" "DreamBoxEdit -- The one and only settings editor for your Dreambox"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\DreamBoxEdit" \
                 "UninstallString" "$INSTDIR\uninstall.exe"

  ;Create uninstaller
  WriteUninstaller "$INSTDIR\Uninstall.exe"

  !insertmacro XPUI_STARTMENU_WRITE_BEGIN Application

    ;Create shortcuts
    CreateDirectory "$SMPROGRAMS\$STARTMENU_FOLDER"
    CreateShortCut "$SMPROGRAMS\$STARTMENU_FOLDER\Uninstall.lnk" "$INSTDIR\Uninstall.exe"

  !insertmacro XPUI_STARTMENU_WRITE_END

SectionEnd

;--------------------------------
;Descriptions

  ;USE A LANGUAGE STRING IF YOU WANT YOUR DESCRIPTIONS TO BE LANGAUGE SPECIFIC

  ;Assign descriptions to sections
  !insertmacro XPUI_FUNCTION_DESCRIPTION_BEGIN
    !insertmacro XPUI_DESCRIPTION_TEXT ${SecInstall} "DreamBoxEdit."
  !insertmacro XPUI_FUNCTION_DESCRIPTION_END

;--------------------------------
;Uninstaller Section

Section "Uninstall"

  ;ADD YOUR OWN FILES HERE...
  FILE dreamboxedit.exe
  FILE DreamBoxEdit_English.chm
  FILE English.lng
  FILE Install_Language.txt
  FILE SatcoDX_TransTable.txt
  FILE Version_notes.txt

  Delete "$INSTDIR\Uninstall.exe"

  RMDir "$INSTDIR"

  !insertmacro XPUI_STARTMENU_GETFOLDER Application $XPUI_TEMP

  Delete "$SMPROGRAMS\$XPUI_TEMP\Uninstall.lnk"

  ;Delete empty start menu parent diretories
  StrCpy $XPUI_TEMP "$SMPROGRAMS\$XPUI_TEMP"

  startMenuDeleteLoop:
	ClearErrors
    RMDir $XPUI_TEMP
    GetFullPathName $XPUI_TEMP "$XPUI_TEMP\.."

    IfErrors startMenuDeleteLoopDone

    StrCmp $XPUI_TEMP $SMPROGRAMS startMenuDeleteLoopDone startMenuDeleteLoop
  startMenuDeleteLoopDone:

  DeleteRegKey /ifempty HKCU "Software\DreamBoxEdit"

	DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\DreamBoxEdit"

SectionEnd
