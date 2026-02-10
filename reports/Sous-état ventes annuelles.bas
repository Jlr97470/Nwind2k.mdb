Version =17
VersionRequired =17
Begin Report
    LayoutForPrint = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Width =8640
    DatasheetFontHeight =10
    ItemSuffix =13
    Top =30
    HelpContextId =500
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x82e053b59440e140
    End
    RecordSource ="Ventes annuelles"
    Caption ="Sous-état ventes annuelles"
    HelpFile ="Nwind80.hlp>Right"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            FontSize =10
            FontWeight =700
            FontName ="Arial"
        End
        Begin TextBox
            AutoLabel = NotDefault
            OldBorderStyle =0
            FontSize =10
            FontName ="Arial"
        End
        Begin ListBox
            FontSize =10
            FontName ="Arial"
        End
        Begin ComboBox
            FontSize =10
            FontName ="Arial"
        End
        Begin BreakLevel
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            KeepTogether =1
            GroupOn =2
            ControlSource ="Date envoi"
        End
        Begin BreakLevel
            GroupFooter = NotDefault
            GroupOn =3
            ControlSource ="Date envoi"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =840
            Name ="EntêteGroupe0"
            Begin
                Begin TextBox
                    Width =2490
                    Height =285
                    FontWeight =700
                    Name ="ÉtiquetteAnnée"
                    ControlSource ="=\"Relevé \" & [Année]"
                End
                Begin Label
                    Left =1245
                    Top =495
                    Width =1065
                    Height =285
                    Name ="ÉtiquetteTrimestre"
                    Caption ="Trimestre:"
                End
                Begin Label
                    Left =3315
                    Top =495
                    Width =2235
                    Height =285
                    Name ="ÉtiquetteCommandesEnvoyées"
                    Caption ="Commandes envoyées:"
                End
                Begin Label
                    Left =7410
                    Top =495
                    Width =810
                    Height =285
                    Name ="ÉtiquetteVentes"
                    Caption ="Ventes:"
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
            Height =390
            BreakLevel =1
            Name ="PiedGroupe2"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =1440
                    Top =60
                    Width =540
                    Height =255
                    FontSize =9
                    Name ="Trimestre"
                    ControlSource ="=Format([Date envoi],\"q\")"
                End
                Begin TextBox
                    TextAlign =3
                    Left =4140
                    Top =60
                    Width =690
                    Height =255
                    FontSize =9
                    TabIndex =1
                    Name ="SousTotalCompte"
                    ControlSource ="=Count([N° commande])"
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =3
                    Left =6825
                    Top =60
                    Height =255
                    FontSize =9
                    TabIndex =2
                    Name ="SousTotalTrimestre"
                    ControlSource ="=Sum([SousTotal])"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =480
            Name ="EntêteGroupe1"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =4140
                    Top =135
                    Width =690
                    Height =255
                    FontSize =9
                    Name ="TotalCompte"
                    ControlSource ="=Count([N° commande])"
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =3
                    Left =6825
                    Top =135
                    Height =255
                    FontSize =9
                    TabIndex =1
                    Name ="TotalTrimestre"
                    ControlSource ="=Sum([SousTotal])"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                End
                Begin Label
                    Left =1440
                    Top =135
                    Width =750
                    Height =270
                    FontSize =9
                    Name ="ÉtiquetteTotaux"
                    Caption ="Totaux:"
                End
                Begin Line
                    BorderWidth =1
                    Left =4140
                    Top =60
                    Width =960
                    Name ="Ligne11"
                End
                Begin Line
                    BorderWidth =1
                    Left =6825
                    Top =60
                    Name ="Ligne12"
                End
            End
        End
    End
End
