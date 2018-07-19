#InstallKeybdHook
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

; Click ScrollLock every 3 minutes to prevent vdi being locked
Loop
{
  Send, {ScrollLock}
  Sleep, 180000
}

; Scroll up
Capslock & sc012::Send,{WheelUp}

; Scroll down
Capslock & sc020::Send,{WheelDown}

; Capslock to switch language
Capslock::PostMessage, 0x50, 2, 0,, A ; 0x50 is WM_INPUTLANGCHANGEREQUEST

; Intellij specific. Can't be remapped in IDEA since it is a default windows shortcut
LAlt & Space::Send, ^+{Space}
