SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

; Scroll up
Space & sc012::Send,{WheelUp}

; Scroll down
Space & sc020::Send,{WheelDown}

; Home
Space & sc016::Home

; End
Space & sc018::End

; Arrows
Space & sc017::Up
Space & sc025::Down
Space & sc024::Left
Space & sc026::Right
Space & sc019::PgUp
Space & sc027::PgDn
Space & sc031::BackSpace
Space & sc032::Enter
Space & sc033::Del

Space::Space

; Capslock to switch language
Capslock::PostMessage, 0x50, 2, 0,, A ; 0x50 is WM_INPUTLANGCHANGEREQUEST

; ScrLk to lock computer
Scrolllock::Run, % "rundll32.exe user32.dll,LockWorkStation"
