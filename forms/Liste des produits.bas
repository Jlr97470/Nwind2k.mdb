Version =17
VersionRequired =17
Begin Form
    AutoResize = NotDefault
    PopUp = NotDefault
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    ScrollBars =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    DatasheetFontHeight =10
    ItemSuffix =19
    Left =1200
    Top =3810
    Right =8190
    Bottom =5760
    HelpContextId =425
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x3c5045b59440e140
    End
    RecordSource ="Produits"
    Caption ="Liste des produits"
    HelpFile ="Nwind80.hlp>Right"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextAlign =3
            FontWeight =700
            ForeColor =8388608
        End
        Begin OptionButton
            SpecialEffect =2
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            BackStyle =1
            BackColor =12632256
            BorderColor =8421504
        End
        Begin TextBox
            BackColor =12632256
            BorderColor =8421504
        End
        Begin ListBox
            BackColor =12632256
        End
        Begin ComboBox
            BackColor =12632256
            BorderColor =8421504
        End
        Begin Section
            Height =975
            BackColor =12632256
            Name ="Détail"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =2015
                    Top =141
                    Width =3105
                    Name ="Nom du produit"
                    ControlSource ="Nom du produit"
                    EventProcPrefix ="Nom_du_produit"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =425
                            Top =141
                            Width =1440
                            Height =240
                            Name ="ÉtiquetteNomProduit"
                            Caption ="Nom du produit:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2015
                    Top =501
                    Width =2520
                    TabIndex =1
                    Name ="Quantité par unité"
                    ControlSource ="Quantité par unité"
                    StatusBarText ="(par exemple : casier 24 bouteilles, bouteille 1 litre)."
                    EventProcPrefix ="Quantité_par_unité"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =170
                            Top =501
                            Width =1695
                            Height =240
                            Name ="ÉtiquetteQtéParUnité"
                            Caption ="Quantité par unité:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5953
                    Top =501
                    Width =795
                    TabIndex =3
                    Name ="Prix unitaire"
                    ControlSource ="Prix unitaire"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                    EventProcPrefix ="Prix_unitaire"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =0
                            Left =4648
                            Top =501
                            Width =1155
                            Height =240
                            Name ="ÉtiquettePrixUnitaire"
                            Caption ="Prix unitaire:"
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =5419
                    Top =171
                    TabIndex =2
                    Name ="Indisponible"
                    ControlSource ="Indisponible"
                    StatusBarText ="Oui signifie que le produit n'est pas disponible."
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =0
                            Left =5664
                            Top =141
                            Width =1200
                            Height =240
                            Name ="ÉtiquetteIndisponible"
                            Caption ="Indisponible"
                        End
                    End
                End
            End
        End
    End
End
