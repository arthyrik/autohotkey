SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

; Scroll up
Capslock & e::Send,{WheelUp}

; Scroll down
Capslock & d::Send,{WheelDown}

; Home
Capslock & u::Home

; End
Capslock & o::End

; Arrows
Capslock & i::Up
Capslock & k::Down
Capslock & j::Left
Capslock & l::Right

; Right Alt to Del
RAlt::Del

; Win + Space to switch language
#Space::PostMessage, 0x50, 2, 0,, A ; 0x50 is WM_INPUTLANGCHANGEREQUEST

; ScrLk to lock computer
Scrolllock::Run, % "rundll32.exe user32.dll,LockWorkStation"
