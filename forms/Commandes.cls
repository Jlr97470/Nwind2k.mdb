Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit



Private Sub Code_client_AfterUpdate()
' Met à jour les contrôles concernant le destinataire sur base de la
' valeur sélectionnée dans la zone de liste modifiable Code client.
    Me!Destinataire = Me![Code client].Column(1)
    Me![Adresse livraison] = Me!Adresse
    Me![Ville livraison] = Me!Ville
    Me![Région livraison] = Me!Région
    Me![Code postal livraison] = Me![Code postal]
    Me![Pays livraison] = Me![Pays]

End Sub

Private Sub Code_client_BeforeUpdate(Cancel As Integer)
' Affiche un message si la zone de liste modifiable Code client est vide.

    Dim strMsg As String, strTitre As String
    Dim intStyle As Integer

    If IsNull(Me![Code client]) Or Me![Code client] = "" Then
        strMsg = "Vous devez sélectionner une valeur de la liste Facturé à."
        strTitre = "Client Facturé à exigé"
        intStyle = vbOKOnly
        MsgBox strMsg, intStyle, strTitre
        Cancel = True
    End If

End Sub


Private Sub ImprimerFacture_Click()
' Ce code est créé par l'Assistant Bouton de commande.
On Error GoTo Err_ImprimerFacture_Click

    Dim strNomDoc As String

    strNomDoc = "Facture"
    ' Imprime l'état Facture en utilisant la requête Filtre factures
    ' pour imprimer la facture de la commande en cours.
    DoCmd.OpenReport strNomDoc, acViewNormal, "Filtre factures"

Quitte_ImprimerFacture_Click:
    Exit Sub

Err_ImprimerFacture_Click:
    ' Si l'action était annulée par l'utilisateur, n'affiche pas un message d'erreur.
    Const conErrDoCmdAnnulé = 2501
    If (Err = conErrDoCmdAnnulé) Then
        Resume Quitte_ImprimerFacture_Click
    Else
        MsgBox Err.Description
        Resume Quitte_ImprimerFacture_Click
    End If

End Sub
