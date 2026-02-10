Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database  ' Utilise l'ordre de la base pour les comparaisons de chaînes.
Option Explicit  ' Exige que les variables soient déclarées avant leur utilisation.

Private Sub Nom_du_produit_AfterUpdate()
' Si la propriété OpenArgs n'est pas nulle, définit le N° fournisseur avec la
' valeur de la propriété OpenArgs du formulaire. OpenArgs aura une valeur si
' le formulaire Produits est ouvert en cliquant sur le bouton de commande
' Ajouter produits du formulaire Fournisseurs.
    If IsNull(Forms!Produits.OpenArgs) Then
        Exit Sub
    Else
        Me![N° fournisseur] = Forms!Produits.OpenArgs
    End If

End Sub

Private Sub SortieVersHTML_Click()
On Error GoTo Err_SortieVersHTML_Click
' Sort l'état Liste alphabétique des produits comme document HTML, et ouvre
' le document dans un explorateur Internet.
' Vous devez avoir Comptmod.htm (modèle pour Les Comptoirs) et LogoLC.gif
' (logo Les Comptoirs) dans le même dossier que la base de données Comptoir.


    DoCmd.OutputTo acOutputReport, "Liste alphabétique des produits", acFormatHTML, "Produits.htm", True, "Comptmod.htm"

Exit_SortieVersHTML_Click:
    Exit Sub

Err_SortieVersHTML_Click:
    ' Si l'action était annulée par l'utilisateur, ne pas afficher de message d'erreur.
    Const conErrDoCmdAnnulé = 2501
    If (Err = conErrDoCmdAnnulé) Then
        Resume Exit_SortieVersHTML_Click
    Else
        MsgBox Err.Description
        Resume Exit_SortieVersHTML_Click
    End If

End Sub
