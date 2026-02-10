Version =17
VersionRequired =17
Begin Form
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    DefaultView =2
    ScrollBars =2
    ViewsAllowed =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Width =8352
    DatasheetFontHeight =10
    ItemSuffix =10
    Left =645
    Top =3960
    Right =8970
    Bottom =5280
    HelpContextId =400
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0xf5dd4bb59440e140
    End
    RecordSource ="Détails commandes complets"
    Caption ="Sous formulaire Commandes client2"
    HelpFile ="Nwind80.hlp>Right"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            OldBorderStyle =1
            BackColor =-2147483633
            ForeColor =-2147483630
        End
        Begin OptionButton
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            LabelX =230
            LabelY =-30
        End
        Begin BoundObjectFrame
            BackStyle =0
        End
        Begin TextBox
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            BackColor =-2147483643
            BorderColor =-2147483640
        End
        Begin ComboBox
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ToggleButton
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin Section
            Height =885
            BackColor =-2147483633
            Name ="Détail"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =1860
                    Top =90
                    Width =3060
                    Height =255
                    ColumnWidth =2775
                    Name ="Nom du produit"
                    ControlSource ="Nom du produit"
                    EventProcPrefix ="Nom_du_produit"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =2
                            Left =330
                            Top =105
                            Width =1395
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteNomProduit"
                            Caption ="Nom du produit"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =7020
                    Top =90
                    Width =1245
                    Height =255
                    ColumnWidth =1515
                    TabIndex =1
                    Name ="Prix unitaire"
                    ControlSource ="Prix unitaire"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                    EventProcPrefix ="Prix_unitaire"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =2
                            Left =5775
                            Top =105
                            Width =1125
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquettePrixUnitaire"
                            Caption ="Prix unitaire"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1860
                    Top =495
                    Width =600
                    Height =255
                    ColumnWidth =1080
                    TabIndex =2
                    Name ="Quantité"
                    ControlSource ="Quantité"
                    Format ="General Number"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =2
                            Left =930
                            Top =510
                            Width =795
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteQté"
                            Caption ="Quantité"
                        End
                    End
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    Left =4251
                    Top =495
                    Width =675
                    Height =255
                    ColumnWidth =960
                    TabIndex =3
                    Name ="Remise (%)"
                    ControlSource ="Remise (%)"
                    Format ="Percent"
                    EventProcPrefix ="Remise____"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =2
                            Left =3285
                            Top =510
                            Width =840
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteRemise"
                            Caption ="Remise"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =7020
                    Top =495
                    Width =1245
                    Height =255
                    ColumnWidth =1290
                    TabIndex =4
                    Name ="PrixTotal"
                    ControlSource ="PrixTotal"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =2
                            Left =5880
                            Top =510
                            Width =1020
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquettePrixTotal"
                            Caption ="Prix total"
                        End
                    End
                End
            End
        End
    End
End
