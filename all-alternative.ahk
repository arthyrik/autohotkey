#InstallKeybdHook
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

; Scroll up
Capslock & sc012::Send,{WheelUp}

; Scroll down
Capslock & sc020::Send,{WheelDown}

; Home
Capslock & sc016::Home

; End
Capslock & sc018::End

; Arrows
Capslock & sc017::Up
Capslock & sc025::Down
Capslock & sc024::Left
Capslock & sc026::Right
Capslock & sc019::PgUp
Capslock & sc027::PgDn
Capslock & sc031::BackSpace
Capslock & sc032::Enter
Capslock & sc033::Del

; Capslock to switch language
Capslock::PostMessage, 0x50, 2, 0,, A ; 0x50 is WM_INPUTLANGCHANGEREQUEST

; ScrLk to lock computer
Scrolllock::Run, % "rundll32.exe user32.dll,LockWorkStation"

; Intellij specific. Can't be remapped in IDEA since it is a default windows shortcut
LAlt & Space::Send, ^+{Space}

;Ctrl & Numpad 4: Previous Track
Left::Media_Prev

;Ctrl & Numpad 6: Next Track
Right::Media_Next

;Ctrl & Numpad 8: Volume Up
Up::SoundSet +3

;Ctrl & Numpad 2: Volume Down
Down::SoundSet -3

;Ctrl & Numpad 5: Play/Pause Track
Down & Up::Media_Play_Pause
