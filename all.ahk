SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff
SendMode Input
#NoEnv
#SingleInstance force

#Include <dual/dual>
dual := new Dual

#Include <dual/defaults>

*sc017::dual.comboKey({F22: "Up"})
*sc024::dual.comboKey({F22: "Left"})
*sc025::dual.comboKey({F22: "Down"})
*sc026::dual.comboKey({F22: "Right"})

*sc016::dual.comboKey({F22: "Home"})
*sc018::dual.comboKey({F22: "End"})
*sc019::dual.comboKey({F22: "PgUp"})
*sc027::dual.comboKey({F22: "PgDn"})

*sc031::dual.comboKey({F22: "BackSpace"})
*sc032::dual.comboKey({F22: "Enter"})
*sc033::dual.comboKey({F22: "Del"})

#If true ; Override defaults.ahk. There will be "duplicate hotkey" errors otherwise.
*Space::
*Space UP::dual.combine("F22", A_ThisHotkey, {delay: 70, timeout: 300, doublePress: -1})

*b::dual.comboKey({F22: "Space"})

;Previous Track
Left::Media_Prev

;Next Track
Right::Media_Next

;Volume Up
Up::SoundSet +3

;Volume Down
Down::SoundSet -3

;Play/Pause Track
Down & Up::Media_Play_Pause

; Capslock to switch language
Capslock::PostMessage, 0x50, 2, 0,, A ; 0x50 is WM_INPUTLANGCHANGEREQUEST

; ScrLk to lock computer
Scrolllock::Run, % "rundll32.exe user32.dll,LockWorkStation"
#if
