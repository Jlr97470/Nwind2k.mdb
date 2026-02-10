Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

' Cette variable est définie à Vrai lorsque l'événement Report_Open s'exécute.
Public blnOuverture As Boolean
Private Sub Détail_Format(Cancel As Integer, FormatCount As Integer)
' Si la case à cocher Affiche détails du formulaire Dialogue Ventes
' annuelles est cochée, n'imprime pas la section Détail.

    If Forms![Dialogue Ventes annuelles]![Affiche détails] = False Then Cancel = True

End Sub


Private Sub PiedGroupe1_Format(Cancel As Integer, FormatCount As Integer)

    ' Si la case à cocher Affiche détails du formulaire Dialogue Ventes
    ' annuelles est cochée, définit la valeur de la zone de texte Montre
    ' à Faux de sorte que l'en-tête de page ne s'imprimera pas sur la
    ' page suivante.
    If Forms![Dialogue Ventes annuelles]![Affiche détails] Then
        Me!Montre.Value = False
    Else
    ' Si la case à cocher Affiche détails du formulaire Dialogue Ventes
    ' annuelles est non cochée, le pied de groupe ne s'imprimera pas.
        Cancel = True
    End If

End Sub


Private Sub PiedGroupe1_Retreat()
' Si la case à cocher Affiche détails du formulaire Dialogue Ventes
' annuelles est cochée, définit la valeur de la zone de texte Montre à Vrai
' de sorte que l'en-tête de page s'imprimera sur la page suivante.

    If Forms![Dialogue Ventes annuelles]![Affiche détails] Then Me!Montre.Value = True

End Sub


Private Sub EntêteGroupe0_Format(Cancel As Integer, FormatCount As Integer)

    Const conNéant = 0

    ' Si la case à cocher [Affiche détails] sur le formulaire Dialogue
    ' Ventes annuelles est cochée, définit la valeur de la zone de texte
    ' Montre à Vrai de sorte que l'en-tête de page s'imprimera sur la
    ' page suivante.
    If Forms![Dialogue Ventes annuelles]![Affiche détails] Then
        Me!Montre.Value = True
    Else
    ' Si la case à cocher Affiche détails du formulaire Dialogue Ventes annuelles est non cochée,
    ' définit la propriété ForceNewPage à conNéant et masque toutes les étiquettes
    ' des enregistrements de détails.
        Me.Section(acGroupLevel1Footer).ForceNewPage = conNéant
        Me!Ligne10.Visible = False
        Me!Ligne15.Visible = False
        Me!ÉtiquetteDétails.Visible = False
        Me!ÉtiquetteNuméroLigne2.Visible = False
        Me!ÉtiquetteDateEnvoi2.Visible = False
        Me!ÉtiquetteCommandesEnvoyées2.Visible = False
        Me!ÉtiquetteVentes2.Visible = False
    End If

End Sub

Private Sub EntêtePage_Format(Cancel As Integer, FormatCount As Integer)
' Si la valeur de la zone de texte Montre est Faux, n'imprime pas l'en-tête de page.

    If Me!Montre.Value = False Then Cancel = True

End Sub


Private Sub Report_Close()
' Ferme le formulaire Dialogue Ventes annuelles.

    Dim strNomDoc As String

    strNomDoc = "Dialogue Ventes annuelles"

    DoCmd.Close acForm, strNomDoc

End Sub

Private Sub Report_NoData(Cancel As Integer)
' Affiche un message si l'utilisateur entre une date pour laquelle il n'y a pas
' d'enregistrements, et n'affiche ou n'imprime pas l'état.
    Dim strMsg As String, strTitre As String
    Dim intStyle As Integer

    strMsg = "Vous devez entrer une date entre le 10 août 1994 et le 5 juin 1996."
    intStyle = vbOKOnly
    strTitre = "Pas de données pour cette plage de dates"

    MsgBox strMsg, intStyle, strTitre
    Cancel = True

End Sub

Private Sub Report_Open(Cancel As Integer)
' Ouvre formulaire Dialogue Ventes annuelles
' La fonction EstChargé (définie dans le module Introduction
' à la programmation) détermine si le formulaire est ouvert.

    Dim strNomDoc As String

    strNomDoc = "Dialogue Ventes annuelles"
    ' Définit la variable publique à Vrai de sorte que Dialogue
    ' Ventes annuelles sache que l'état est occupé dans l'événement open.
    blnOuverture = True

    ' Ouvre le formulaire.
    DoCmd.OpenForm strNomDoc, , , , , acDialog

    ' Si le formulaire Dialogue Ventes annuelles n'est pas chargé, n'affiche
    ' n'y n'imprime l'état. (L'utilisateur a cliqué sur le bouton Annuler
    ' du formulaire.)
    If EstChargé(strNomDoc) = False Then Cancel = True

    ' Définit la variable publique à Faux, ce qui signifie que l'événement
    ' Open est clôturé.
    blnOuverture = False
End Sub


Private Sub EntêteÉtat_Format(Cancel As Integer, FormatCount As Integer)
' Si la case à cocher est non cochée, définit la zone de texte Montre à Faux.

    If Forms![Dialogue Ventes annuelles]![Affiche détails] = False Then Me!Montre.Value = False

End Sub
