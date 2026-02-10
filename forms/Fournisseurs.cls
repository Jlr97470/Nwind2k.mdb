Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit


Private Sub AjouterProduits_Click()
' Ce code est créé en partie par l'Assistant Bouton de commande.
On Error GoTo Err_AjouterProduits_Click

    Dim strNomDoc As String

    strNomDoc = "Produits"
    ' Ouvre le formulaire Produits en mode entrée des données et sauvegarde
    ' le N° fournisseur dans la propriété OpenArgs du formulaire.
    DoCmd.OpenForm strNomDoc, , , , acAdd, , Me![N° fournisseur]

    ' Ferme le formulaire Liste des produits.
    DoCmd.Close acForm, "Liste des produits"

    ' Passe le focus au contrôle Nom du produit.
    Forms![Produits]![Nom du produit].SetFocus

Quitte_AjouterProduits_Click:
    Exit Sub

Err_AjouterProduits_Click:
    MsgBox Err.Description
    Resume Quitte_AjouterProduits_Click

End Sub

Private Sub Form_BeforeUpdate(Cancel As Integer)
' Si le nombre de chiffres entrés dans la zone de texte Code postal est
' incorrect pour la valeur de la zone de texte Pays, un message s'affiche
' et la valeur de Code postal est annulée.

    Select Case Me!Pays
        Case IsNull(Me![Pays])
            Exit Sub
        Case "France", "Italie", "Espagne"
            If Len(Me![Code postal]) <> 5 Then
                MsgBox "Le code postal doit avoir 5 caractères.", 0, "Erreur de code postal"
                Cancel = True
                Me![Code postal].SetFocus
            End If
        Case "Australie", "Singapour"
            If Len(Me![Code postal]) <> 4 Then
                MsgBox "Le code postal doit avoir 4 caractères.", 0, "Erreur de code postal"
                Cancel = True
                Me![Code postal].SetFocus
            End If
        Case "Canada"
            If Not Me![Code postal] Like "[A-Z][0-9][A-Z] [0-9][A-Z][0-9]" Then
                MsgBox "Code postal non valide. Exemple de code canadien: H1J 1C3", 0, "Erreur de code postal"
                Cancel = True
                Me![Code postal].SetFocus
            End If

    End Select


End Sub

Private Sub Form_Close()

    ' Ferme les formulaires Liste des produits et Produits
    ' si ils sont ouverts.
    If EstChargé("Liste des produits") Then DoCmd.Close acForm, "Liste des produits"
    If EstChargé("Produits") Then DoCmd.Close acForm, "Produits"

End Sub

Private Sub Form_Current()
On Error GoTo Err_Form_Current

' Si le formulaire Liste des produits est ouvert, affiche les produits
' du fournisseur en cours.

    Dim strNomDoc As String
    Dim strCritèreLiaison As String

        strNomDoc = "Liste des produits"
        strCritèreLiaison = "[N° fournisseur] = Forms![Fournisseurs]![N° fournisseur]"

    If IsNull(Me![Société]) Then
        Exit Sub
    ElseIf EstChargé("Liste des produits") Then
        DoCmd.OpenForm strNomDoc, , , strCritèreLiaison
    End If

Quitte_Form_Current:
    Exit Sub

Err_Form_Current:
    MsgBox Err.Description
    Resume Quitte_Form_Current

End Sub





Private Sub VisualisationProduits_Click()
' Ce code est créé en partie par l'Assistant Bouton de commande.
On Error GoTo Err_VisualisationProduits_Click

    Dim strMsg As String, strTitre As String
    Dim intStyle As Integer
    Dim strNomDoc As String, strCritèreLiaison As String

    ' Si le contrôle Société est vide, affiche un message.
    If IsNull(Me![Société]) Then
        strMsg = "Positionnez-vous sur l'enregistrement du fournisseur dont vous souhaitez voir les produits, ensuite pressez à nouveau le bouton Visualisation produits."
        intStyle = vbOKOnly
        strTitre = "Sélectionner un fournisseur"
        MsgBox strMsg, intStyle, strTitre
        Me![Société].SetFocus
    Else
    ' Dans le cas contraire, ouvre le formulaire Liste des produits, affichant les produits du fournisseur en cours.
        strNomDoc = "Liste des produits"
        strCritèreLiaison = "[N° fournisseur] = Forms![Fournisseurs]![N° fournisseur]"
        DoCmd.OpenForm strNomDoc, , , strCritèreLiaison
        DoCmd.MoveSize (1440 * 0.78), (1440 * 1.8)
    End If

Quitte_VisualisationProduits_Click:
    Exit Sub

Err_VisualisationProduits_Click:
    MsgBox Err.Description
    Resume Quitte_VisualisationProduits_Click

End Sub
