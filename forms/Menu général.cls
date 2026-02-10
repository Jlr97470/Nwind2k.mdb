Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Function OuvreFormulaires(strNomForm As String) As Integer
' Cette fonction est utilisée par l'événement Click des boutons de
' commande qui ouvrent les formulaires dans le menu général. Utiliser une
' fonction est plus efficace que de répéter le même code dans plusieurs
' procédures événementielles.
On Error GoTo Err_OuvreFormulaires

    ' Ouvre le formulaire spécifié.
    DoCmd.OpenForm strNomForm

Quitte_OuvreFormulaires:
    Exit Function

Err_OuvreFormulaires:
    MsgBox Err.Description
    Resume Quitte_OuvreFormulaires

End Function






Private Sub AfficheFenêtreBaseDeDonnées_Click()
' Ce code est créé en partie par l'Assistant Bouton de commande.
On Error GoTo Err_AfficheFenêtreBaseDeDonnées_Click

    Dim strNomDoc As String

    strNomDoc = "Catégories"

    ' Ferme le formulaire Menu général.
    DoCmd.Close

    ' Donne le focus à la fenêtre Base de données; sélectionne la table
    ' Catégories (premier formulaire dans la liste).
    DoCmd.SelectObject acTable, strNomDoc, True

Quitte_AfficheFenêtreBaseDeDonnées_Click:
    Exit Sub

Err_AfficheFenêtreBaseDeDonnées_Click:
    MsgBox Err.Description
    Resume Quitte_AfficheFenêtreBaseDeDonnées_Click

End Sub

Private Sub QuitterMicrosoftAccess_Click()
' Ce code est créé par l'Assistant Bouton de commande.
On Error GoTo Err_QuitterMicrosoftAccess_Click

    ' Quitte Microsoft Access.
    DoCmd.Quit

Quitte_QuitterMicrosoftAccess_Click:
    Exit Sub

Err_QuitterMicrosoftAccess_Click:
    MsgBox Err.Description
    Resume Quitte_QuitterMicrosoftAccess_Click

End Sub
