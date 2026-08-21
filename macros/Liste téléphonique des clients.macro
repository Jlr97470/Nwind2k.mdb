Version =131074
ColumnsShown =3
Begin
    Comment ="Attachées au formulaire Liste téléphonique des clients."
End
Begin
End
Begin
    Comment ="Attachée à l'événement Après MAJ du groupe d'options FiltreParNomSociété"
End
Begin
    MacroName ="Boutons Alpha"
    Condition ="[FiltresParNomSociété]=1"
    Action ="ApplyFilter"
    Comment ="Filtre pour les noms de société commençant par A, À, Á, Â, Ã, ou Ä."
    Argument =""
    Argument ="[Société] Like \"[AÀÁÂÃÄ]*\""
End
Begin
    Condition ="[FiltresParNomSociété]=2"
    Action ="ApplyFilter"
    Comment ="B"
    Argument =""
    Argument ="[Société] Like \"B*\""
End
Begin
    Condition ="[FiltresParNomSociété]=3"
    Action ="ApplyFilter"
    Comment ="C ou Ç"
    Argument =""
    Argument ="[Société] Like \"[CÇ]*\""
End
Begin
    Condition ="[FiltresParNomSociété]=4"
    Action ="ApplyFilter"
    Comment ="D"
    Argument =""
    Argument ="[Société] Like \"D*\""
End
Begin
    Condition ="[FiltresParNomSociété]=5"
    Action ="ApplyFilter"
    Comment ="E, È, É, Ê, ou Ë"
    Argument =""
    Argument ="[Société] Like \"[EÈÉÊË]*\""
End
Begin
    Condition ="[FiltresParNomSociété]=6"
    Action ="ApplyFilter"
    Comment ="F"
    Argument =""
    Argument ="[Société] Like \"F*\""
End
Begin
    Condition ="[FiltresParNomSociété]=7"
    Action ="ApplyFilter"
    Comment ="G"
    Argument =""
    Argument ="[Société] Like \"G*\""
End
Begin
    Condition ="[FiltresParNomSociété]=8"
    Action ="ApplyFilter"
    Comment ="H"
    Argument =""
    Argument ="[Société] Like \"H*\""
End
Begin
    Condition ="[FiltresParNomSociété]=9"
    Action ="ApplyFilter"
    Comment ="I, Ì, Í, Î, ou Ï"
    Argument =""
    Argument ="[Société] Like \"[IÌÍÎÏ]*\""
End
Begin
    Condition ="[FiltresParNomSociété]=10"
    Action ="ApplyFilter"
    Comment ="J"
    Argument =""
    Argument ="[Société] Like \"J*\""
End
Begin
    Condition ="[FiltresParNomSociété]=11"
    Action ="ApplyFilter"
    Comment ="K"
    Argument =""
    Argument ="[Société] Like \"K*\""
End
Begin
    Condition ="[FiltresParNomSociété]=12"
    Action ="ApplyFilter"
    Comment ="L"
    Argument =""
    Argument ="[Société] Like \"L*\""
End
Begin
    Condition ="[FiltresParNomSociété]=13"
    Action ="ApplyFilter"
    Comment ="M"
    Argument =""
    Argument ="[Société] Like \"M*\""
End
Begin
    Condition ="[FiltresParNomSociété]=14"
    Action ="ApplyFilter"
    Comment ="N, ou Ñ"
    Argument =""
    Argument ="[Société] Like \"[NÑ]*\""
End
Begin
    Condition ="[FiltresParNomSociété]=15"
    Action ="ApplyFilter"
    Comment ="O, Ò, Ó, Ô, Õ, ou Ö"
    Argument =""
    Argument ="[Société] Like \"[OÒÓÔÕÖ]*\""
End
Begin
    Condition ="[FiltresParNomSociété]=16"
    Action ="ApplyFilter"
    Comment ="P"
    Argument =""
    Argument ="[Société] Like \"P*\""
End
Begin
    Condition ="[FiltresParNomSociété]=17"
    Action ="ApplyFilter"
    Comment ="Q"
    Argument =""
    Argument ="[Société] Like \"Q*\""
End
Begin
    Condition ="[FiltresParNomSociété]=18"
    Action ="ApplyFilter"
    Comment ="R"
    Argument =""
    Argument ="[Société] Like \"R*\""
End
Begin
    Condition ="[FiltresParNomSociété]=19"
    Action ="ApplyFilter"
    Comment ="S ou Š (S hacek)"
    Argument =""
    Argument ="[Société] Like \"[SŠ]*\""
End
Begin
    Condition ="[FiltresParNomSociété]=20"
    Action ="ApplyFilter"
    Comment ="T"
    Argument =""
    Argument ="[Société] Like \"T*\""
End
Begin
    Condition ="[FiltresParNomSociété]=21"
    Action ="ApplyFilter"
    Comment ="U, Ù, Ú, Û, ou Ü"
    Argument =""
    Argument ="[Société] Like \"[UÙÚÛÜ]*\""
End
Begin
    Condition ="[FiltresParNomSociété]=22"
    Action ="ApplyFilter"
    Comment ="V"
    Argument =""
    Argument ="[Société] Like \"V*\""
End
Begin
    Condition ="[FiltresParNomSociété]=23"
    Action ="ApplyFilter"
    Comment ="W"
    Argument =""
    Argument ="[Société] Like \"W*\""
End
Begin
    Condition ="[FiltresParNomSociété]=24"
    Action ="ApplyFilter"
    Comment ="X"
    Argument =""
    Argument ="[Société] Like \"X*\""
End
Begin
    Condition ="[FiltresParNomSociété]=25"
    Action ="ApplyFilter"
    Comment ="Y, Ý, ou ÿ"
    Argument =""
    Argument ="[Société] Like \"[YÝÿ]*\""
End
Begin
    Condition ="[FiltresParNomSociété]=26"
    Action ="ApplyFilter"
    Comment ="Z, Æ, Ø, ou  Å"
    Argument =""
    Argument ="[Société] Like \"[ZÆØÅ]*\""
End
Begin
    Condition ="[FiltresParNomSociété]=27"
    Action ="ShowAllRecords"
    Comment ="Affiche tous les enregistrements."
End
Begin
    Condition ="[RecordsetClone].[RecordCount]>0"
    Action ="GoToControl"
    Comment ="S'il existe des enregistrements pour la lettre sélectionnée, se rendre au contrô"
        "le Société."
    Argument ="Société"
End
Begin
    Action ="StopMacro"
    Comment ="Arrête la macro."
End
Begin
    Condition ="[RecordsetClone].[RecordCount]=0"
    Action ="MsgBox"
    Comment ="Si aucun enregistrement n'est renvoyé pour la lettre sélectionnée, affiche un me"
        "ssage."
    Argument ="Il n'y a pas d'enregistrements pour cette lettre."
    Argument ="-1"
    Argument ="4"
    Argument ="Pas d'enregistrements renvoyés"
End
Begin
    Action ="ShowAllRecords"
    Comment ="Affiche tous les enregistrements."
End
Begin
    Action ="SetValue"
    Comment ="Presse le bouton Tous."
    Argument ="[FiltresParNomSociété]"
    Argument ="27"
End
Begin
    Comment ="Est exécuté par la macro Exemple d'Autokeys.^p lorsque l'on presse Ctrl+P. "
End
Begin
    MacroName ="Imprimer"
    Action ="PrintOut"
    Comment ="Imprime les enregistrements affichés en cours."
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="0"
    Argument ="1"
    Argument ="-1"
End
