Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub btnModifier_Click()
On Error GoTo btnModifier_Err
    Me!PivotTable.Verb = acOLEVerbOpen
    Me!PivotTable.Action = acOLEActivate
btnModifier_Exit:
    Exit Sub
btnModifier_Err:
    MsgBox Err.Description
    Resume btnModifier_Exit
End Sub
