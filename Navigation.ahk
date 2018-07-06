SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

; Scroll up/down (capslock + ed)
Capslock & sc012::Send,{WheelUp}
Capslock & sc020::Send,{WheelDown}

; Home/End (capslock + uo)
Capslock & sc016::Home
Capslock & sc018::End

; Arrows (capslock + ijkl)
Capslock & sc017::Up
Capslock & sc025::Down
Capslock & sc024::Left
Capslock & sc026::Right

; Right Alt to Del
RAlt::Del

; Win + Space to switch language
#Space::PostMessage, 0x50, 2, 0,, A ; 0x50 is WM_INPUTLANGCHANGEREQUEST

; ScrLk to lock computer
Scrolllock::Run, % "rundll32.exe user32.dll,LockWorkStation"
