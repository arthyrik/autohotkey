#InstallKeybdHook
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

; Scroll up
Capslock & sc012::Send,{WheelUp}

; Scroll down
Capslock & sc020::Send,{WheelDown}

; Capslock to switch language
Capslock::PostMessage, 0x50, 2, 0,, A ; 0x50 is WM_INPUTLANGCHANGEREQUEST

; ScrLk to lock computer
;Scrolllock::Run, % "rundll32.exe user32.dll,LockWorkStation"

; Intellij specific. Can't be remapped in IDEA since it is a default windows shortcut
LAlt & Space::Send, ^+{Space}

; VmWare view specific.
#IfWinActive ahk_exe vmware-view.exe
LAlt::MouseClick, left
#ifWinActive