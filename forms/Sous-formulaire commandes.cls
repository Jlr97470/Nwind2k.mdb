Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Form_BeforeDelConfirm(Annuler As Integer, Réponse As Integer)
' Si Sous-formulaire commandes est ouvert comme formulaire indépendant,
' un message s'affiche et la suppression est annulée. (La fonction EstChargé
' trouve un formulaire dans la collection Forms lorsqu'il est ouvert comme
' formulaire indépendant, mais pas quand il ouvert comme sous-formulaire
' dans un formulaire principal.)

    Dim strMsg As String, strTitre As String
    Dim intStyle As Integer

    If EstChargé("Sous-formulaire commandes") Then
        strMsg = "Vous ne pouvez pas supprimer un enregistrement lorsque vous ouvrez"
        strMsg = strMsg + " Sous-formulaire commandes comme formulaire indépendant."
        intStyle = vbOKOnly
        strTitre = "Impossible de supprimer un enregistrement"
        MsgBox strMsg, intStyle, strTitre
        Annuler = True
    End If

End Sub

Private Sub Form_BeforeUpdate(Annuler As Integer)
' Si le sous-formulaire Commandes est ouvert en tant que formulaire
' indépendant, un message s'affiche et les changements effectués sont
' annulés dans la zone de texte NomProduit. (La fonction EstChargé trouve
' un formulaire dans la collection Forms lorsque celui-ci est ouvert en
' tant que formulaire indépendant, mais pas lorsqu'il est ouvert comme
' sous-formulaire dans un formulaire principal.)

    Dim strMsg As String, strTitre As String
    Dim intStyle As Integer

    If EstChargé("Sous-formulaire commandes") Then
        strMsg = "Vous ne pouvez pas ajouter ou modifier un enregistrement lorsque vous ouvrez Sous-formulaire commandes en tant que formulaire indépendant."
        intStyle = vbOKOnly
        strTitre = "Impossible d'ajouter ou de modifier un enregistrement"
        MsgBox strMsg, intStyle, strTitre
        Me.Undo
    End If

End Sub




Private Sub Form_Error(DataErr As Integer, Réponse As Integer)
' Des erreurs peuvent se produire ici si l'utilisateur n'a pas déjà sélectionner
' un client pour cette commande dans le formulaire principal. Si il y a une
' erreur et que Commandes![Facturé à] est Null, informe l'utilisateur et annule
' l'entrée faite dans le sous-formulaire.

    If DataErr > 0 Then
        If IsNull(Me.Parent![Code client]) Then
            MsgBox "Sélectionner un client à facturer avant d'entrer des détails de commande."
            RunCommand acCmdUndo
            Me.Parent![Code client].SetFocus
            Réponse = acDataErrContinue
        Else
            Réponse = acDataErrDisplay
        End If
    End If

End Sub

Private Sub Réf_produit_AfterUpdate()
On Error GoTo Err_Réf_Produit_AfterUpdate

    Dim strFiltre As String

    ' Définit le filtre avant d'être utilisé dans la fonction DLookup.
    strFiltre = "[Réf produit] = " & Me![Réf produit]

    ' Recherche le prix unitaire du produit et l'assigne au contrôle Prix unitaire.
    Me![Prix unitaire] = DLookup("[Prix unitaire]", "Produits", strFiltre)

Quitte_Réf_Produit_AfterUpdate:
    Exit Sub

Err_Réf_Produit_AfterUpdate:
    MsgBox Err.Description
    Resume Quitte_Réf_Produit_AfterUpdate

End Sub

Private Sub Réf_produit_BeforeUpdate(Annuler As Integer)
' Si le sous-formulaire Commandes est ouvert comme formulaire
' indépendant, un message s'affiche et les changements effectués sont
' annulés dans la zone de texte NomProduit. (La fonction EstChargé trouve
' un formulaire dans la collection Forms lorsque celui-ci est ouvert en
' tant que formulaire indépendant, mais pas lorsqu'il est ouvert comme
' sous-formulaire dans un formulaire principal.)

    Dim strMsg As String, strTitre As String
    Dim intStyle As Integer

    If EstChargé("Sous-formulaire commandes") Then
        strMsg = "Vous ne pouvez pas ajouter ou modifier un nom de produit lorsque vous ouvrez Sous-formulaire commandes en tant que formulaire indépendant."
        intStyle = vbOKOnly
        strTitre = "Impossible d'ajouter ou de modifier un nom de produit"
        MsgBox strMsg, intStyle, strTitre
        Me![Réf produit].Undo
        Me.Undo
    End If

End Sub
