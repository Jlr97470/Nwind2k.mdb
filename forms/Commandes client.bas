Version =17
VersionRequired =17
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    AllowDeletions = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Width =8640
    DatasheetFontHeight =10
    ItemSuffix =17
    Left =360
    Top =45
    Right =9000
    Bottom =4680
    HelpContextId =400
    DatasheetGridlinesColor =12632256
    Filter ="(((Société)=\"Blondel père et fils\"))"
    RecSrcDt = Begin
        0x2ca23ab59440e140
    End
    RecordSource ="Clients"
    Caption ="Commandes client"
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
            Height =4650
            BackColor =-2147483633
            Name ="Détail"
            Begin
                Begin TextBox
                    TabStop = NotDefault
                    OverlapFlags =85
                    BackStyle =0
                    Left =1020
                    Top =240
                    Width =3060
                    Height =285
                    ColumnWidth =3000
                    FontSize =10
                    FontWeight =700
                    BorderColor =8421504
                    Name ="Société"
                    ControlSource ="Société"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OldBorderStyle =0
                            OverlapFlags =85
                            Left =210
                            Top =240
                            Width =720
                            Height =285
                            FontSize =10
                            Name ="ÉtiquetteSociété"
                            Caption ="Société"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    TabStop = NotDefault
                    OverlapFlags =85
                    BackStyle =0
                    Left =6765
                    Top =240
                    Width =1590
                    Height =285
                    ColumnWidth =1185
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    BorderColor =8421504
                    Name ="Pays"
                    ControlSource ="Pays"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            BackStyle =1
                            OldBorderStyle =0
                            OverlapFlags =85
                            Left =6150
                            Top =240
                            Width =525
                            Height =285
                            FontSize =10
                            Name ="ÉtiquettePays"
                            Caption ="Pays"
                            FontName ="Arial"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    SpecialEffect =2
                    Left =201
                    Top =1080
                    Width =8352
                    Height =1622
                    TabIndex =2
                    Name ="Sous-formulaire commandes client1"
                    SourceObject ="Form.Sous-formulaire commandes client1"
                    LinkChildFields ="Code client"
                    LinkMasterFields ="Code client"
                    EventProcPrefix ="Sous_formulaire_commandes_client1"
                    Begin
                        Begin Label
                            OldBorderStyle =0
                            OverlapFlags =85
                            Left =210
                            Top =765
                            Width =2280
                            Height =288
                            Name ="ÉtiquetteSousFormulaireCommandesClient1"
                            Caption ="Sélectionnez une commande..."
                            FontName ="Arial"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =87
                    SpecialEffect =2
                    Left =195
                    Top =3060
                    Width =8352
                    Height =1351
                    TabIndex =3
                    Name ="Sous-formulaire commandes client2"
                    SourceObject ="Form.Sous-formulaire commandes client2"
                    LinkChildFields ="[N° commande]"
                    LinkMasterFields ="[Sous-formulaire commandes client1].Form![N° commande]"
                    EventProcPrefix ="Sous_formulaire_commandes_client2"
                    Begin
                        Begin Label
                            OldBorderStyle =0
                            OverlapFlags =93
                            Left =210
                            Top =2760
                            Width =2445
                            Height =285
                            Name ="ÉtiquetteSousFormulaireCommandesClient2"
                            Caption ="...pour voir les détails de celle-ci."
                            FontName ="Arial"
                        End
                    End
                End
                Begin Line
                    OverlapFlags =85
                    SpecialEffect =2
                    Left =195
                    Top =720
                    Width =8352
                    Name ="Ligne8"
                End
            End
        End
    End
End
