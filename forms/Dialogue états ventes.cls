Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Sub ImprimeÉtats(ModeImpression As Integer)
On Error GoTo Err_Aperçu_Click
    ' Cette procédure est utilisée par les procédures Aperçu_Click et
    ' Imprimer_Click. Visualise ou imprime l'état sélectionné dans le
    ' groupe d'options ÉtatÀImprimer. Ensuite ferme le formulaire
    ' Dialogue états ventes.

    Dim strQuelleCatégorie As String

    strQuelleCatégorie = "[Nom de catégorie] = Forms![Dialogue états ventes]!SélectionCatégorie"

    Select Case Me!ÉtatÀImprimer
        Case 1
            DoCmd.OpenReport "Ventes par représentant par pays", ModeImpression
        Case 2
            DoCmd.OpenReport "Totaux des ventes par montant", ModeImpression
        Case 3
            If IsNull(Forms![Dialogue états ventes]!SélectionCatégorie) Then
                DoCmd.OpenReport "Ventes par catégorie", ModeImpression
            Else
                DoCmd.OpenReport "Ventes par catégorie", ModeImpression, , strQuelleCatégorie
            End If
    End Select
    DoCmd.Close acForm, "Dialogue états ventes"

Quitte_Aperçu_Click:
    Exit Sub

Err_Aperçu_Click:
    Resume Quitte_Aperçu_Click

End Sub



Private Sub Annuler_Click()
' Ce code est créé par l'Assistant Bouton de commande.
On Error GoTo Err_Annuler_Click

    ' Ferme le formulaire.
    DoCmd.Close

Quitte_Annuler_Click:
    Exit Sub

Err_Annuler_Click:
    MsgBox Err.Description
    Resume Quitte_Annuler_Click

End Sub

Private Sub Aperçu_Click()
' Visualise l'état sélectionné. Cette procédure utilise la procédure
' ImprimeÉtats définie dans la section (Général) de ce module.

    ImprimeÉtats acPreview

End Sub


Private Sub ÉtatÀImprimer_AfterUpdate()
' Active la zone de liste modifiable SélectionCatégorie si l'utilisateur
' a choisi l'état Ventes par catégorie.

    Const conVentesParCatégorie = 3

    If Me!ÉtatÀImprimer.Value = conVentesParCatégorie Then
        Me!SélectionCatégorie.Enabled = True
    Else
        Me!SélectionCatégorie.Enabled = False
    End If

End Sub

Private Sub Imprimer_Click()
' Imprime l'état sélectionné. Cette procédure utilise la procédure
' ImprimeÉtats définie dans la section (Général) de ce module.

    ImprimeÉtats acNormal

End Sub
