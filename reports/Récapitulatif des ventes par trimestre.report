Version =17
VersionRequired =17
Begin Report
    LayoutForPrint = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Width =8925
    DatasheetFontHeight =10
    ItemSuffix =20
    Left =150
    Top =135
    HelpContextId =500
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x854ce4959541e140
    End
    RecordSource ="Récapitulatif des ventes par trimestre"
    HelpFile ="Nwind80.hlp>Right"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            FontItalic = NotDefault
            BackStyle =0
            TextFontFamily =18
            FontSize =12
            FontWeight =700
            FontName ="Times New Roman"
        End
        Begin TextBox
            OldBorderStyle =0
            FontSize =9
            FontName ="Arial"
        End
        Begin ListBox
            FontSize =9
            FontName ="Arial"
        End
        Begin ComboBox
            FontSize =9
            FontName ="Arial"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            ControlSource ="=DatePart(\"q\",[Date envoi])"
        End
        Begin BreakLevel
            GroupFooter = NotDefault
            GroupOn =2
            ControlSource ="Date envoi"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1080
            Name ="EntêteÉtat"
            Begin
                Begin Label
                    Width =6855
                    Height =585
                    FontSize =22
                    Name ="ÉtiquetteTitre"
                    Caption ="Récapitulatif des ventes par trimestre"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    TextFontFamily =18
                    Top =600
                    Width =2295
                    Height =330
                    FontSize =12
                    FontWeight =700
                    Name ="DateImpression"
                    ControlSource ="=Format(Date(),\"Medium Date\")"
                    FontName ="Times New Roman"
                End
            End
        End
        Begin PageHeader
            Height =570
            Name ="EntêtePage"
            Begin
                Begin Line
                    Top =105
                    Width =8775
                    Name ="Ligne14"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =975
            Name ="EntêteGroupe0"
            Begin
                Begin TextBox
                    TextAlign =1
                    Left =1185
                    Top =75
                    Height =285
                    FontSize =10
                    FontWeight =700
                    Name ="Trimestre"
                    ControlSource ="=DatePart(\"q\",[Date envoi])"
                    Begin
                        Begin Label
                            Left =15
                            Top =30
                            Width =1125
                            Height =330
                            Name ="ÉtiquetteTrimestre"
                            Caption ="Trimestre:"
                        End
                    End
                End
                Begin Label
                    TextAlign =2
                    Left =45
                    Top =495
                    Width =795
                    Height =330
                    Name ="ÉtiquetteAnnée"
                    Caption ="Année:"
                End
                Begin Label
                    TextAlign =2
                    Left =1110
                    Top =495
                    Width =2295
                    Height =330
                    Name ="ÉtiquetteCommandesEnvoyées"
                    Caption ="Commandes envoyées:"
                End
                Begin Label
                    TextAlign =2
                    Left =3810
                    Top =495
                    Width =870
                    Height =330
                    Name ="ÉtiquetteVentes"
                    Caption ="Ventes:"
                End
                Begin Line
                    Top =870
                    Width =8775
                    Name ="Ligne16"
                End
                Begin Line
                    Top =915
                    Width =8775
                    Name ="Ligne17"
                End
                Begin Line
                    Top =405
                    Width =8775
                    Name ="Ligne18"
                End
                Begin Line
                    Top =450
                    Width =8775
                    Name ="Ligne19"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =0
            Name ="Détail"
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =360
            BreakLevel =1
            Name ="PiedGroupe2"
            Begin
                Begin TextBox
                    Top =30
                    Width =585
                    Name ="Année"
                    ControlSource ="=DatePart(\"yyyy\",[Date envoi])"
                End
                Begin TextBox
                    Left =1725
                    Top =30
                    Width =795
                    TabIndex =1
                    Name ="CommandesEnvoyées"
                    ControlSource ="=Count([N° commande])"
                End
                Begin TextBox
                    DecimalPlaces =0
                    Left =3420
                    Top =30
                    TabIndex =2
                    Name ="VentesTrimestrielles"
                    ControlSource ="=Sum([SousTotal])"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =570
            Name ="PiedGroupe1"
            Begin
                Begin Line
                    Top =120
                    Width =8775
                    Name ="Ligne11"
                End
            End
        End
        Begin PageFooter
            Height =360
            Name ="PiedPage"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    TextAlign =2
                    TextFontFamily =18
                    Left =3735
                    Top =15
                    Width =1860
                    Height =330
                    FontSize =11
                    FontWeight =700
                    Name ="NuméroPage"
                    ControlSource ="=\"Page \" & [Page]"
                    FontName ="Times New Roman"
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
