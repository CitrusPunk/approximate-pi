' Open the .xlm-file and execute the makro called 'approximatePi'

Sub approximatePi()
Dim iterations As Long
Dim radius As Double
inCircle = 0

iterations = Range("A2").Value
radius = 1#

For i = 0 To iterations
    x = Rnd()
    y = Rnd()
    distance = Math.Sqr(x * x + y * y)
    If distance < radius Then
            inCircle = inCircle + 1
    End If
Next i
    Range("B2").Value = 4 * (inCircle / iterations)
End Sub


