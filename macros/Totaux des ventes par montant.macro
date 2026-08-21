Version =131074
ColumnsShown =3
Begin
    Comment ="Liée à l'état Totaux des ventes par montant."
End
Begin
    Comment ="Liée à la propriété OnFormat de l'en-tête de page."
End
Begin
    MacroName ="Cache saut page"
    Action ="SetValue"
    Comment ="Masque le contrôle saut de page lorsque l'état s'ouvre et à chaque nouvelle page"
        " excepté lorsque la condition dans la macro Affiche saut page est  vérifiée."
    Argument ="[SautPageCaché].[Visible]"
    Argument ="No"
End
Begin
End
Begin
    Comment ="Liée à la propriété OnFormat de la section Détail."
End
Begin
    MacroName ="Affiche saut page"
    Condition ="[Compteur]=10"
    Action ="SetValue"
    Comment ="Affiche le contrôle de saut de page lorsque la valeur de la zone de texte Compte"
        "ur vaut 10 (représentant 10 enregistrements)."
    Argument ="[SautPageCaché].[Visible]"
    Argument ="Yes"
End
Begin
End
Begin
    Comment ="Liée à la propriété OnFormat du pied de page Date envoi."
End
Begin
    MacroName ="Cache pied page"
    Condition ="[Compteur]=10"
    Action ="CancelEvent"
    Comment ="N'imprime pas le pied de page si la valeur de la zone de texte Compteur vaut 10."
End
Begin
End
Begin
    Comment ="Liée à la propriété OnPrint de la section Détail."
End
Begin
    MacroName ="Total page"
    Action ="SetValue"
    Comment ="A chaque enregistrement, incrémente de la valeur de MontantVente la zone de text"
        "e TotalPage."
    Argument ="[TotalPage]"
    Argument ="[TotalPage]+[MontantVente]"
End
Begin
End
Begin
    Comment ="Liée à la propriété OnPrint de l'en-tête de page."
End
Begin
    MacroName ="Nouvelle page"
    Action ="SetValue"
    Comment ="À chaque nouvelle page, met la zone de texte TotalPage à zéro."
    Argument ="[TotalPage]"
    Argument ="0"
End
