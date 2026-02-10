Attribute VB_Name = "Utilitaires"
Option Compare Database ' Utilise l'ordre de la base pour les comparaisons de chaînes.
Option Explicit         ' Exige que les variables soient déclarées avant leur utilisation.

Function EstChargé(ByVal strNomForm As String) As Boolean
 ' Retourne Vrai si le formulaire spécifié est ouvert
 ' en mode Création ou en mode Feuille de données.
    Const conÉtatObjFermé = 0
    Const conModeCréation = 0

    If SysCmd(acSysCmdGetObjectState, acForm, strNomForm) <> conÉtatObjFermé Then
        If Forms(strNomForm).CurrentView <> conModeCréation Then
            EstChargé = True
        End If
    End If

End Function
