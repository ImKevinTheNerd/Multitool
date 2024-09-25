Dim answer, secondAnswer
answer = MsgBox("Do you want to shut down the computer in 10 seconds?", vbYesNo + vbQuestion, "Shutdown Confirmation")

If answer = vbYes Then
    MsgBox "Bro you really leaving the game like that? Fine."
    Set shell = CreateObject("WScript.Shell")
    shell.Run "shutdown -s -t 10"
Else
    MsgBox "Nice, keep on playing."
    secondAnswer = MsgBox("Ok, you gonna leave in like 10 mins or something?", vbYesNo + vbQuestion, "10 Minute Shutdown")

    If secondAnswer = vbYes Then
        MsgBox "Ok fine, at least not directly."
        Set shell = CreateObject("WScript.Shell")
        shell.Run "shutdown -s -t 600"  ' 600 seconds = 10 minutes
    Else
        MsgBox "AIGHT BET YOURE A GODLY GAMER"
    End If
End If
