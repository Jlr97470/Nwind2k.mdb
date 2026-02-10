Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Form_AfterUpdate()
    ' Actualise la zone de liste modifiable "Rend compte à" après
    ' qu'un enregistrement ait été modifié.
    Me![Rend compte à].Requery

End Sub
