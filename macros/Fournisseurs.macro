Version =131074
ColumnsShown =3
Begin
    Comment ="Les macros de ce groupe pourraient être liées au formulaire Fournisseurs à la pl"
        "ace du code du module de ce formulaire."
End
Begin
End
Begin
    Comment ="Liée au bouton Ajouter produits du formulaire Fournisseurs."
End
Begin
    MacroName ="Ajouter produits"
    Action ="Echo"
    Comment ="Gèle l'écran lorsque la macro s'exécute (Echo off)."
    Argument ="0"
End
Begin
    Action ="Close"
    Comment ="Ferme le formulaire Liste des produits."
    Argument ="2"
    Argument ="Liste des produits"
    Argument ="2"
End
Begin
    Action ="OpenForm"
    Comment ="Ouvre le formulaire Produits."
    Argument ="Produits"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="0"
    Argument ="0"
End
Begin
    Action ="SetValue"
    Comment ="Définit le N° fournisseur avec le fournisseur en cours dans le formulaire Fourni"
        "sseurs."
    Argument ="[Forms]![Produits]![N° fournisseur]"
    Argument ="[N° fournisseur]"
End
Begin
    Action ="GoToControl"
    Comment ="Se positionne sur le contrôle Code catégorie."
    Argument ="Code catégorie"
End
Begin
End
Begin
    Comment ="Liée au bouton Visualisation produits du formulaire Fournisseurs."
End
Begin
    MacroName ="Visualisation produits"
    Action ="Echo"
    Comment ="Gèle l'écran lorsque la macro s'exécute (Echo off)."
    Argument ="0"
End
Begin
    Condition ="IsNull([N° fournisseur])"
    Action ="MsgBox"
    Comment ="Si il n'y a pas de fournisseur en cours dans le formulaire Fournisseurs, un mess"
        "age s'affiche..."
    Argument ="Se positionne sur l'enregistrement du fournisseur dont vous voulez voir les prod"
        "uits, et ensuite pressez à nouveau le bouton Visualisation produits."
    Argument ="-1"
    Argument ="0"
    Argument ="Sélectionner un fournisseur"
End
Begin
    Condition ="..."
    Action ="GoToControl"
    Comment ="...se positionne sur le contrôle Société..."
    Argument ="Société"
End
Begin
    Condition ="..."
    Action ="StopMacro"
    Comment ="...et arrête la macro."
End
Begin
    Action ="OpenForm"
    Comment ="Ouvre le formulaire Liste des produits et affiche les produits du fournisseur en"
        " cours."
    Argument ="Liste des produits"
    Argument ="0"
    Argument =""
    Argument ="[N° fournisseur]=[Forms]![Fournisseurs]![N° fournisseur]"
    Argument ="2"
    Argument ="0"
End
Begin
    Action ="MoveSize"
    Comment ="Place le formulaire Liste des produits le plus bas possible à droite du formulai"
        "re Fournisseurs."
    Argument ="1123"
    Argument ="2592"
End
Begin
End
Begin
    Comment ="Liée à la propriété Sur activation (OnCurrent) du formulaire Fournisseurs."
End
Begin
    MacroName ="Affiche produits liés"
    Condition ="IsNull([N° fournisseur])"
    Action ="StopMacro"
    Comment ="S'il n'y a pas de fournisseur en cours dans le formulaire Fournisseurs, arrête l"
        "a macro."
End
Begin
    Condition ="EstChargé(\"Liste des produits\")"
    Action ="OpenForm"
    Comment ="Si le formulaire Produits est ouvert, le place à l'avant plan et affiche les pro"
        "duits du fournisseur en cours."
    Argument ="Liste des produits"
    Argument ="0"
    Argument =""
    Argument ="[N° fournisseur]=[Forms]![Fournisseurs]![N° fournisseur]"
    Argument ="2"
    Argument ="0"
End
Begin
End
Begin
    Comment ="Liée à la propriété Sur fermeture (OnClose) du formulaire Fournisseurs."
End
Begin
    MacroName ="Fermer"
    Condition ="EstChargé(\"Liste des produits\")"
    Action ="Close"
    Comment ="Ferme le  le formulaire Liste des produits si il est ouvert."
    Argument ="2"
    Argument ="Liste des produits"
    Argument ="2"
End
Begin
    Condition ="EstChargé(\"Produits\")"
    Action ="Close"
    Comment ="Ferme le  le formulaire Produits si il est ouvert."
    Argument ="2"
    Argument ="Produits"
    Argument ="2"
End
Begin
End
Begin
    Comment ="Liée à la propriété Avant MAJ (BeforeUpdate) du formulaire Fournisseurs."
End
Begin
    MacroName ="Valide codes postaux"
    Condition ="IsNull([Pays])"
    Action ="StopMacro"
    Comment ="Si Pays est Null, le code postal ne peut être validé."
End
Begin
    Condition ="[Pays] In (\"France\",\"Italie\",\"Espagne\") And Len([Code postal])<>5"
    Action ="MsgBox"
    Comment ="Si le code postal n'est pas de 5 caractères, un message s'affiche..."
    Argument ="Le code postal doit être de 5 caracrères."
    Argument ="-1"
    Argument ="4"
    Argument ="Erreur de code postal"
End
Begin
    Condition ="..."
    Action ="CancelEvent"
    Comment ="...et annule l'événement."
End
Begin
    Condition ="..."
    Action ="GoToControl"
    Argument ="Code postal"
End
Begin
    Condition ="[Pays] In (\"Australie\",\"Singapour\") And Len([Code postal])<>4"
    Action ="MsgBox"
    Comment ="Affiche un message si le code postal n'est pas de 4 caractères..."
    Argument ="Le code postal doit être de 4 caractères."
    Argument ="-1"
    Argument ="4"
    Argument ="Erreur de code postal"
End
Begin
    Condition ="..."
    Action ="CancelEvent"
    Comment ="...et annule l'événement."
End
Begin
    Condition ="..."
    Action ="GoToControl"
    Argument ="Code postal"
End
Begin
    Condition ="([Pays]=\"Canada\") And ([Code postal] Not Like \"[A-Z][0-9][A-Z] [0-9][A-Z][0-9"
        "]\")"
    Action ="MsgBox"
    Comment ="Si le code postal n'est pas correct pour le Canada, affiche un message..."
    Argument ="Le code postal n'est pas valide. Exemple de code canadien: H1J1C3"
    Argument ="-1"
    Argument ="4"
    Argument ="Erreur de code postal"
End
Begin
    Condition ="..."
    Action ="CancelEvent"
    Comment ="...et annule l'événement."
End
Begin
    Condition ="..."
    Action ="GoToControl"
    Argument ="Code postal"
End
