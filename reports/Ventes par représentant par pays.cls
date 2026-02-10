Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit




Private Sub EntêteGroupe0_Format(Cancel As Integer, FormatCount As Integer)
' Initialise le numéro de page à 1 lorsqu'un nouveau groupe débute

    Page = 1

End Sub

Private Sub EntêteGroupe2_Format(Cancel As Integer, FormatCount As Integer)
' Affiche EtiquetteObjectifAtteint et LigneReprésentant si
' le total du représentant atteint l'objectif fixé.

    If Me!TotalReprésentant > 25000 Then
        Me!ÉtiquetteObjectifAtteint.Visible = True
        Me!LigneReprésentant.Visible = True
    Else
        Me!ÉtiquetteObjectifAtteint.Visible = False
        Me!LigneReprésentant.Visible = False
    End If

End Sub

Private Sub Report_NoData(Cancel As Integer)
' Affiche un message si l'utilisateur entre une date pour
' laquelle il n'y a pas d'enregistrements, n'affiche
' pas d'aperçu et n'imprime rien.

    Dim strMsg As String, strTitre As String
    Dim intStyle As Integer

    strMsg = "Vous devez entrer une date entre le 10-août-94 et le 5-juin-96."
    intStyle = vbOKOnly
    strTitre = "Pas de données pour cette plage de dates"

    MsgBox strMsg, intStyle, strTitre
    Cancel = True

End Sub
