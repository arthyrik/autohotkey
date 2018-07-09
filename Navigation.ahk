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
Capslock & sc032::Enter
Capslock & sc033::Del

; Capslock to switch language
Capslock::PostMessage, 0x50, 2, 0,, A ; 0x50 is WM_INPUTLANGCHANGEREQUEST

; ScrLk to lock computer
Scrolllock::Run, % "rundll32.exe user32.dll,LockWorkStation"
