#include <Misc.au3>
#include <MsgBoxConstants.au3>

; Only run this script once
If _Singleton("Compose", 1) = 0 Then
    Exit
EndIf

HotKeySet("{CAPSLOCK}", "ComposeFunction")

While 1
    Sleep(100)
Wend

Func ComposeFunction()
    HotKeySet('"', "UmlautsFunction")
    HotKeySet("s", "Compose_s")
EndFunc

Func UmlautsFunction()
    HotKeySet("a", "SendComposeUmlauts")
    HotKeySet("o", "SendComposeUmlauts")
    HotKeySet("u", "SendComposeUmlauts")
    HotKeySet("A", "SendComposeUmlauts")
    HotKeySet("O", "SendComposeUmlauts")
    HotKeySet("U", "SendComposeUmlauts")
    HotKeySet("s") ; Unset ß hotkey
EndFunc

Func SendComposeUmlauts()
    Select ; The last hotkey pressed
        Case @HotKeyPressed == "a"
            Send("ä", 1)
        Case @HotKeyPressed == "o"
            Send("ö", 1)
        Case @HotKeyPressed == "u"
            Send("ü", 1)
        Case @HotKeyPressed == "A"
            Send("Ä", 1)
        Case @HotKeyPressed == "O"
            Send("Ö", 1)
        Case @HotKeyPressed == "U"
            Send("Ü", 1)
    EndSelect
    ; Remove hotkeys
    HotKeySet('"')
    HotKeySet("a")
    HotKeySet("o")
    HotKeySet("u")
    HotKeySet("A")
    HotKeySet("O")
    HotKeySet("U")
EndFunc

Func Compose_s()
    HotKeySet("s", "SendCompose_ss")
    HotKeySet('"') ; Unset umlaut hotkeys
EndFunc

Func SendCompose_ss()
    Send("ß", 1)
    ; Remove hotkey
    HotKeySet("s")
EndFunc
