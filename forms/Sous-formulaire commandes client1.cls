Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Sub Form_Current()
' Ce code est créé par l'Assistant Formulaire.
    Dim strNomDocParent As String

    On Error Resume Next
    strNomDocParent = Me.Parent.Name

    If Err <> 0 Then
        GoTo Quitte_Form_Current
    Else
        On Error GoTo Erreur_Form_Current
        Me.Parent![Sous-formulaire commandes client2].Requery
    End If

Quitte_Form_Current:
    Exit Sub

Erreur_Form_Current:
    MsgBox Err.Description
    Resume Quitte_Form_Current

End Sub
