Version =17
VersionRequired =17
Begin Report
    LayoutForPrint = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Width =8985
    DatasheetFontHeight =10
    ItemSuffix =14
    Left =285
    Top =135
    HelpContextId =500
    RecSrcDt = Begin
        0x704711879441e140
    End
    RecordSource ="Liste alphabétique des produits"
    HelpFile ="Nwind80.hlp>Right"
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin TextBox
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            GroupOn =1
            ControlSource ="Nom du produit"
        End
        Begin BreakLevel
            ControlSource ="Nom du produit"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =855
            Name ="EntêteÉtat"
            Begin
                Begin Label
                    TextFontFamily =34
                    Top =135
                    Width =3690
                    Height =330
                    FontSize =12
                    FontWeight =700
                    Name ="Titre"
                    Caption ="Liste alphabétique des produits"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =0
                    TextFontFamily =34
                    Top =480
                    Width =2010
                    Name ="DateImpression"
                    ControlSource ="=Format(Date(),\"Medium Date\")"
                End
            End
        End
        Begin PageHeader
            Height =195
            Name ="EntêtePage"
            Begin
                Begin Line
                    LineSlant = NotDefault
                    Top =105
                    Width =8985
                    Name ="Ligne11"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =855
            Name ="EntêteGroupe0"
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    TextAlign =1
                    TextFontFamily =34
                    Top =30
                    Width =1965
                    FontWeight =700
                    Name ="PremièreLettreDuNom"
                    ControlSource ="=Left([Nom du produit],1)"
                End
                Begin Label
                    TextFontFamily =34
                    Left =450
                    Top =495
                    Width =1335
                    Height =240
                    FontWeight =700
                    Name ="ÉtiquetteNomProduit"
                    Caption ="Nom du produit:"
                End
                Begin Label
                    TextFontFamily =34
                    Left =5385
                    Top =510
                    Width =1500
                    Height =240
                    FontWeight =700
                    Name ="ÉtiquetteQtéParUnité"
                    Caption ="Quantité par unité:"
                End
                Begin Label
                    TextFontFamily =34
                    Left =7548
                    Top =495
                    Width =1320
                    Height =240
                    FontWeight =700
                    Name ="ÉtiquetteUnitésStock"
                    Caption ="Unités en stock:"
                End
                Begin Label
                    TextFontFamily =34
                    Left =3180
                    Top =495
                    Width =1485
                    Height =240
                    FontWeight =700
                    Name ="ÉtiquetteNomCatégorie"
                    Caption ="Nom de catégorie:"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =375
            Name ="Détail"
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    Left =435
                    Top =30
                    Width =2640
                    Name ="Nom du produit"
                    ControlSource ="Nom du produit"
                    EventProcPrefix ="Nom_du_produit"
                End
                Begin TextBox
                    OldBorderStyle =0
                    Left =5385
                    Top =30
                    Width =2430
                    TabIndex =1
                    Name ="Quantité par unité"
                    ControlSource ="Quantité par unité"
                    EventProcPrefix ="Quantité_par_unité"
                End
                Begin TextBox
                    OldBorderStyle =0
                    Left =7950
                    Top =30
                    Width =915
                    TabIndex =2
                    Name ="Unités en stock"
                    ControlSource ="Unités en stock"
                    EventProcPrefix ="Unités_en_stock"
                End
                Begin TextBox
                    OldBorderStyle =0
                    Left =3180
                    Top =30
                    Width =2115
                    TabIndex =3
                    Name ="Nom de catégorie"
                    ControlSource ="Nom de catégorie"
                    EventProcPrefix ="Nom_de_catégorie"
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =255
            Name ="PiedGroupe1"
            Begin
                Begin Line
                    LineSlant = NotDefault
                    Top =120
                    Width =8970
                    Height =15
                    Name ="Ligne9"
                End
            End
        End
        Begin PageFooter
            Height =360
            Name ="PiedPage"
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    Left =7485
                    Top =60
                    Name ="NuméroPage"
                    ControlSource ="=\"Page \" & [Page] & \" sur \" & [Pages]"
                End
            End
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =0
            Name ="PiedÉtat"
        End
    End
End
