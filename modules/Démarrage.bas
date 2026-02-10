Attribute VB_Name = "Démarrage"
Option Compare Database
Option Explicit
' Les fonctions de ce module sont utilisées par le formulaire Demarrage.

Function OuvreDemarrage() As Boolean
' Affiche le formulaire Demarrage seulement si la base de données n'est pas un
' réplica maître ou un réplica.
' Est utilisée par l'événement Sur ouverture du formulaire Demarrage.
On Error GoTo OuvreDemarrage_Err
    If EstCeUnRéplica() Then
        ' Cette base de données est une réplica-maître ou une Réplica,
        ' ferme le formulaire Demarrage avant qu'il ne soit affiché.
         DoCmd.Close
    Else
        ' Cette base de données n'est pas une Réplica-maître ou une
        ' Réplica, affiche le formulaire Demarrage.
        ' Définit la valeur de la case à cocher MasqueFormDemarrage en
        ' utilisant la valeur de la propriété de base de données
        ' StartupForm.
        If CurrentDb().Properties("StartupForm") = "Demarrage" Then
            ' La propriété StartupForm a la valeur Demarrage,
            ' désactive la case à cocher MasqueFormDemarrage.
            Forms!Demarrage!MasqueFormDemarrage = False
        Else
            ' La propriété StartupForm n'a pas la valeur Demarrage,
            ' active la case à cocher MasqueFormDemarrage
            Forms!Demarrage!MasqueFormDemarrage = True
        End If
    End If

OuvreDemarrage_Quitte:
    Exit Function

OuvreDemarrage_Err:
    Const conPropriétéNonTrouvée = 3270
    If Err = conPropriétéNonTrouvée Then
        Forms!Demarrage!MasqueFormDemarrage = True
        Resume OuvreDemarrage_Quitte
    End If
End Function

Function MasqueFormDemarrage()
On Error GoTo MasqueFormDemarrage_Err
' Utilise la valeur de la case à cocher MasqueFormDemarrage pour déterminer
' le paramétrage de la propriété StartupForm de la base de données.
' Utilisé par la propriété Sur Fermeture du formulaire Demarrage.
        If Forms!Demarrage!MasqueFormDemarrage Then
        ' La case à cocher MasqueFormDemarrage est activée,
        ' définit la propriété StartupForm à (aucune).
            CurrentDb().Properties("StartupForm") = "(aucune)"
        Else
            ' La case à cocher MasqueFormDemarrage est désactivée,
            ' définit la propriété StartupForm à Demarrage.
            CurrentDb().Properties("StartupForm") = "Demarrage"
        End If

        Exit Function

MasqueFormDemarrage_Err:
    Const conPropriétéNonTrouvée = 3270
    If Err = conPropriétéNonTrouvée Then
        Dim bd As Database
        Dim prop As Property
        Set bd = CurrentDb()
        Set prop = bd.CreateProperty("StartupForm", dbText, "Demarrage")
        bd.Properties.Append prop
        Resume Next
    End If
End Function
Function FermeFormulaire()
' Ferme le formulaire Demarrage.
' Fonction utilisée par la propriété Click du bouton de commande OK
' du formulaire Demarrage.
    DoCmd.Close

End Function
Function EstCeUnRéplica() As Boolean
On Error GoTo EstCeUnRéplica_Err
' Détermine si la base de données est un Réplica-maître ou un Réplica.
' Utilisée par la fonction OuvreDemarrage.

    Dim blnValeurRetour As Boolean

    blnValeurRetour = False
    If CurrentDb().Properties("Replicable") = "T" Then
        ' La valeur de la propriété Replicable est T, la base de données
        ' est un Réplica-maître ou un Réplica.
        blnValeurRetour = True
    Else
        ' La valeur de la propriété Replicable n'est pas T, la base de
        ' données n'est pas un Réplica-maître ou un Réplica.
        blnValeurRetour = False
    End If

EstCeUnRéplica_Quitte:
    EstCeUnRéplica = blnValeurRetour
    Exit Function

EstCeUnRéplica_Err:
    Resume EstCeUnRéplica_Quitte
End Function
