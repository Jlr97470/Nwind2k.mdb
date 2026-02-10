Version =17
VersionRequired =17
Begin Report
    LayoutForPrint = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Width =8625
    DatasheetFontHeight =10
    ItemSuffix =31
    Left =60
    Top =15
    HelpContextId =500
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x803dfe4b7143e140
    End
    RecordSource ="Récapitulatif des ventes par année"
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
            GroupOn =2
            ControlSource ="Date envoi"
        End
        Begin BreakLevel
            GroupFooter = NotDefault
            GroupOn =3
            ControlSource ="Date envoi"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1080
            Name ="EntêteÉtat"
            Begin
                Begin Label
                    Top =15
                    Width =6315
                    Height =570
                    FontSize =22
                    Name ="ÉtiquetteTitre"
                    Caption ="Récapitulatif des ventes par année"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    TextFontFamily =18
                    Top =600
                    Width =2400
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
            Height =225
            Name ="EntêtePage"
            Begin
                Begin Line
                    LineSlant = NotDefault
                    Top =60
                    Width =8610
                    Name ="Ligne29"
                End
                Begin Line
                    LineSlant = NotDefault
                    Top =105
                    Width =8610
                    Name ="Ligne30"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            Height =1200
            Name ="EntêteGroupe0"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    TextAlign =1
                    TextFontFamily =18
                    Top =45
                    Width =2505
                    Height =330
                    FontSize =12
                    FontWeight =700
                    Name ="Année"
                    ControlSource ="=DatePart(\"yyyy\",[Date envoi])"
                    FontName ="Times New Roman"
                End
                Begin Label
                    Left =1326
                    Top =600
                    Width =1110
                    Height =330
                    Name ="ÉtiquetteTrimestre"
                    Caption ="Trimestre:"
                End
                Begin Label
                    Left =2616
                    Top =600
                    Width =2295
                    Height =330
                    Name ="ÉtiquetteCommandesEnvoyées"
                    Caption ="Commandes envoyées:"
                End
                Begin Label
                    Left =5286
                    Top =600
                    Width =840
                    Height =330
                    Name ="ÉtiquetteVentes"
                    Caption ="Ventes:"
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =1320
                    Top =915
                    Width =7290
                    Name ="Ligne7"
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =1320
                    Top =959
                    Width =7290
                    Name ="Ligne25"
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =1320
                    Top =495
                    Width =7290
                    Name ="Ligne26"
                End
                Begin Line
                    LineSlant = NotDefault
                    Left =1320
                    Top =540
                    Width =7290
                    Name ="Ligne27"
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
                    Left =1326
                    Top =45
                    Width =585
                    Name ="Trimestre"
                    ControlSource ="=DatePart(\"q\",[Date envoi])"
                End
                Begin TextBox
                    Left =3255
                    Top =45
                    Width =660
                    TabIndex =1
                    Name ="NbreCommandesTrimestre"
                    ControlSource ="=Count([N° commande])"
                End
                Begin TextBox
                    DecimalPlaces =0
                    Left =4575
                    Top =45
                    Width =1545
                    TabIndex =2
                    Name ="VentesTrimestre"
                    ControlSource ="=Sum([SousTotal])"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =765
            Name ="PiedGroupe1"
            Begin
                Begin TextBox
                    Left =3255
                    Top =240
                    Width =660
                    Name ="NbreCommandesAnnée"
                    ControlSource ="=Count([N° commande])"
                End
                Begin TextBox
                    DecimalPlaces =0
                    Left =4575
                    Top =240
                    Width =1545
                    TabIndex =1
                    Name ="TotalAnnée"
                    ControlSource ="=Sum([SousTotal])"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                End
                Begin TextBox
                    FontItalic = NotDefault
                    TextAlign =1
                    TextFontFamily =18
                    Left =15
                    Top =195
                    Width =2115
                    Height =330
                    FontSize =12
                    FontWeight =700
                    TabIndex =2
                    Name ="ÉtiquetteTotauxAnnée"
                    ControlSource ="=\"Totaux pour \" & [Année] & \":\""
                    FontName ="Times New Roman"
                End
                Begin Line
                    LineSlant = NotDefault
                    Top =60
                    Width =8610
                    Name ="Ligne19"
                End
                Begin Line
                    LineSlant = NotDefault
                    Top =600
                    Width =8610
                    Name ="Ligne23"
                End
                Begin Line
                    LineSlant = NotDefault
                    Top =645
                    Width =8610
                    Name ="Ligne28"
                End
            End
        End
        Begin PageFooter
            Height =360
            Name ="PiedPage"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    TextAlign =1
                    TextFontFamily =18
                    Left =4320
                    Top =15
                    Height =330
                    FontSize =12
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
