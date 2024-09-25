Option Explicit

Dim rating
Dim isValid

isValid = False

Do While Not isValid
    rating = InputBox("How much did you enjoy my multitool? (1-5 stars)")
    
    ' Check if the user pressed Cancel
    If rating = "" Then
        MsgBox "You have canceled the input."
        WScript.Quit
    End If
    
    Select Case rating
        Case "1"
            MsgBox "I'm sorry to hear that, this is my first multitool after all."
            isValid = True
        Case "2"
            MsgBox "I'm sorry to hear a 2 star review but I'm glad you didn't think it was the worst."
            isValid = True
        Case "3"
            MsgBox "I'm happy to hear a medium good review from someone."
            isValid = True
        Case "4"
            MsgBox "I'm very happy to hear a 4 star review from someone especially since this is my first multitool."
            isValid = True
        Case "5"
            MsgBox "I'm so happy to hear that and this is my first multitool which is insane."
            isValid = True
        Case Else
            MsgBox "Error: Please enter a valid rating between 1 and 5."
    End Select
Loop
