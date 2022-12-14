#region --- Au3Recorder generated code Start (v3.3.9.5 KeyboardLayout=0000080A)  ---

#region --- Internal functions Au3Recorder Start ---
HotKeySet("{Esc}", "ExitScript")

Func _Au3RecordSetup()
	Opt('WinWaitDelay',100)
	Opt('WinDetectHiddenText',1)
	Opt('MouseCoordMode',0)
	Local $aResult = DllCall('User32.dll', 'int', 'GetKeyboardLayoutNameW', 'wstr', '')

	If $aResult[1] <> '0000080A' Then
		MsgBox(64, 'Warning', 'Recording has been done under a different Keyboard layout' & @CRLF & '(0000080A->' & $aResult[1] & ')')
	EndIf

EndFunc

Func _WinWaitActivate($title,$text,$timeout=0)
	WinWait($title,$text,$timeout)
	If Not WinActive($title,$text) Then WinActivate($title,$text)
	WinWaitActive($title,$text,$timeout)
EndFunc

_AU3RecordSetup()
#endregion --- Internal functions Au3Recorder End ---

_WinWaitActivate("Mis proyectos - Apps Script - Brave","")
For $i = 1 To 60 Step 1

	Sleep(1000)
	MouseClick("left",1868,342,1)
	Sleep(3000)
	MouseClick("left",1600,500,1)
	Sleep(1000)
	MouseClick("left",1016,690,1)

Next


Func ExitScript()
    Exit 
EndFunc

#endregion --- Au3Recorder generated code End ---
