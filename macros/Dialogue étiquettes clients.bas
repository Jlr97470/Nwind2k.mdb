Version =131074
ColumnsShown =3
Begin
    Comment ="Liée au formulaire Dialogue étiquettes clients."
End
Begin
End
Begin
    Comment ="Liée au groupe d'options ImprimerÉtiquettesPour."
End
Begin
    MacroName ="Active SélectionPays"
    Condition ="[ImprimerÉtiquettesPour]=1"
    Action ="SetValue"
    Comment ="Si l'utilisateur a choisi Tous les pays, désactive la zone de liste modifiable S"
        "électionPays."
    Argument ="[SélectionPays].[Enabled]"
    Argument ="No"
End
Begin
    Condition ="[ImprimerÉtiquettesPour]=2"
    Action ="SetValue"
    Comment ="Si l'utilisateur a choisi Un pays spécifique, active la zone de liste modifiable"
        " SélectionPays."
    Argument ="[SélectionPays].[Enabled]"
    Argument ="Yes"
End
Begin
    Condition ="..."
    Action ="GoToControl"
    Comment ="Se positionne sur la zone de liste modifiable SélectionPays."
    Argument ="SélectionPays"
End
Begin
End
Begin
    Comment ="Liée au bouton Aperçu."
End
Begin
    MacroName ="Aperçu"
    Condition ="[ImprimerÉtiquettesPour]=1"
    Action ="OpenReport"
    Comment ="Aperçu de tous les enregistrements."
    Argument ="Étiquettes clients"
    Argument ="2"
End
Begin
    Condition ="[ImprimerÉtiquettesPour]=2 And IsNull([SélectionPays])"
    Action ="MsgBox"
    Comment ="Si auncun pays n'est sélectionné, un message s'affiche..."
    Argument ="Pour visualiser ou imprimer des étiquettes, vous devez sélectionner un pays dans"
        " la liste ou cliquer sur Tous les pays."
    Argument ="-1"
    Argument ="0"
    Argument ="Sélectionner un pays"
End
Begin
    Condition ="..."
    Action ="GoToControl"
    Comment ="...se positionne sur la zone de liste modifiable SélectionPays..."
    Argument ="SélectionPays"
End
Begin
    Condition ="..."
    Action ="StopMacro"
    Comment ="...et arrête la macro."
End
Begin
    Condition ="[ImprimerÉtiquettesPour]=2"
    Action ="OpenReport"
    Comment ="Visualise les enregistrements du pays sélectionné."
    Argument ="Étiquettes clients"
    Argument ="2"
    Argument =""
    Argument ="[Pays]=[Forms]![Dialogue étiquettes clients]![SélectionPays]"
End
Begin
    Action ="Close"
    Comment ="Ferme le formulaire Dialogue étiquettes clients."
    Argument ="2"
    Argument ="Dialogue étiquettes clients"
    Argument ="0"
End
Begin
End
Begin
    Comment ="Liée au bouton Imprimer."
End
Begin
    MacroName ="Imprimer"
    Condition ="[ImprimerÉtiquettesPour]=1"
    Action ="OpenReport"
    Comment ="Imprime tous les enregistrements."
    Argument ="Étiquettes clients"
    Argument ="0"
End
Begin
    Condition ="[ImprimerÉtiquettesPour]=2 And IsNull([SélectionPays])"
    Action ="MsgBox"
    Comment ="Si aucun pays n'est sélectionné, affiche un message..."
    Argument ="Pour visualiser ou imprimer des étiquettes, vous devez sélectionner un pays dans"
        " la liste ou cliquer sur Tous les pays."
    Argument ="-1"
    Argument ="0"
    Argument ="Sélectionner un pays"
End
Begin
    Condition ="..."
    Action ="GoToControl"
    Comment ="...se positionne sur la zone de liste modifiable SélectionPays..."
    Argument ="SélectionPays"
End
Begin
    Condition ="..."
    Action ="StopMacro"
    Comment ="...et arrête la macro."
End
Begin
    Condition ="[ImprimerÉtiquettesPour]=2"
    Action ="OpenReport"
    Comment ="Imprime les enregistrements correspondant au pays sélectionné."
    Argument ="Étiquettes clients"
    Argument ="0"
    Argument =""
    Argument ="[Pays]=[Forms]![Dialogue étiquettes clients]![SélectionPays]"
End
Begin
    Action ="Close"
    Comment ="Ferme le formulaire Dialogue étiquettes clients."
    Argument ="2"
    Argument ="Dialogue étiquettes clients"
    Argument ="0"
End
Begin
End
Begin
    Comment ="Liée au bouton Annuler."
End
Begin
    MacroName ="Annuler"
    Action ="Close"
    Comment ="Ferme le formulaire Dialogue étiquettes clients."
    Argument ="2"
    Argument ="Dialogue étiquettes clients"
    Argument ="0"
End
