# AutoIt-Compose
**See this for a better version (not mine, so I cannot upload it here unfortunately): https://autoit.de/thread/87359-kombination-von-tastatureingaben-richtig-abfangen/?postID=703887#post703887**

Basic compose key functionality for German umlauts written in AutoIt.

Since I work in Germany but much prefer the UK keyboard layout, this script helps me write some common umlauts like ä, ö, ü, ß by pressing `CapsLock + " + [aou]` / `CapsLock + s + s`.  
Usually I would just use [WinCompose](https://github.com/SamHocevar/wincompose) or write an AutoHotkey script. Unfortunately installing new software is not allowed on my new work computer and there was a prepackaged AutoIt, so although I have never worked with AutoIt before, I took a few minutes to whip up this script. If it’s of any help for anyone else, even better ☺

## Customization
If you want to set your own compose key, just change the line `HotKeySet("{CAPSLOCK}", "ComposeFunction")` and replace `{CAPSLOCK}` with your preferred prefix. You can find a list of special keys here: [https://www.autoitscript.com/autoit3/docs/functions/Send.htm](https://www.autoitscript.com/autoit3/docs/functions/Send.htm).

## Known bugs
- [X] ~~Uppercase umlauts (Ä, Ö, Ü) don’t work yet. Apparently either the `@HotKeyPressed` or the `Switch` statement ignore casing.~~
