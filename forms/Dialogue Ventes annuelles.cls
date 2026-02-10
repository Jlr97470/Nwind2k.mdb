Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

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

Private Sub OK_Click()
On Error GoTo Err_OK_Click

    Dim strMsg As String, strTitre As String
    Dim intStyle As Integer

    ' Si l'état Ventes annuelles n'a pas été ouvert, une erreur se produit.
    ' (La variable blnOuverture est vraie uniquement lorsque l'événement
    ' Open de l'état a été exécuté.)
    If Not Reports![Ventes annuelles].blnOuverture Then Err.Raise 0

    ' Masque le formulaire.
    Me.Visible = False

Quitte_OK_Click:
    Exit Sub

Err_OK_Click:
    strMsg = "Pour utiliser ce formulaire, vous devez visualiser ou imprimer l'état Ventes annuelles à partir de la fenêtre de Base de données ou en mode Création."
    intStyle = vbOKOnly
    strTitre = "Ouverture à partir de l'état"

    MsgBox strMsg, intStyle, strTitre
    Resume Quitte_OK_Click

End Sub
