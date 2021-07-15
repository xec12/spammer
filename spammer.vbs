Dim Shell
Set Shell = CreateObject("WScript.Shell")
Dim senten
Dim i
senten = InputBox("Enter the app. Spam messages will be send to this app. (For example: if your using whatsapp web on chrome enter chrome.exe):","Spammer - Github/xec12") 
spam = InputBox("Enter spam message:","Spammer - Github/xec12")
total = InputBox("Enter spam count: ","Spammer - Github/ngn13")
cooldown = InputBox("Enter cooldown time (ms): ","Spammer - Github/ngn13")
answer = MsgBox ("WARNING! After spamming starts, DO NOT CLICK ANYWHERE. Wait untill spam ends! Do you want to continue?", 4, "Spammer - Github/xec12")
If answer=vbYes Then
Shell.AppActivate senten
For i = 0 To total
  Shell.SendKeys spam
  WScript.sleep cooldown
  Shell.SendKeys "~"
  WScript.sleep cooldown
Next
End If
