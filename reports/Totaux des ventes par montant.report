Version =17
VersionRequired =17
Begin Report
    LayoutForPrint = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Width =9360
    DatasheetFontHeight =10
    ItemSuffix =17
    Left =30
    Top =45
    HelpContextId =500
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x78478b899541e140
    End
    RecordSource ="Totaux des ventes par montant"
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
            SortOrder = NotDefault
            GroupFooter = NotDefault
            GroupOn =9
            GroupInterval =1000
            ControlSource ="MontantVente"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1035
            Name ="EntêteÉtat"
            Begin
                Begin Label
                    FontItalic = NotDefault
                    Top =15
                    Width =5610
                    Height =465
                    FontSize =18
                    Name ="Titre"
                    Caption ="Totaux des ventes par montant"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    Left =15
                    Top =555
                    Width =2895
                    FontWeight =700
                    Name ="DateImpression"
                    ControlSource ="=Format(Date(),\"Medium Date\")"
                End
            End
        End
        Begin PageHeader
            Height =510
            BackColor =12632256
            OnFormat ="Totaux des ventes par montant.Cache saut page"
            OnPrint ="Totaux des ventes par montant.Nouvelle page"
            Name ="EntêtePage"
            Begin
                Begin Label
                    TextAlign =3
                    Left =1590
                    Top =105
                    Width =1530
                    Height =285
                    Name ="ÉtiquetteMontantVente"
                    Caption ="Montant vente:"
                End
                Begin Label
                    Left =3345
                    Top =105
                    Width =1050
                    Height =285
                    Name ="ÉtiquetteN°Commande"
                    Caption ="N° comm.:"
                End
                Begin Label
                    Left =4545
                    Top =105
                    Width =1665
                    Height =285
                    Name ="ÉtiquetteSociété"
                    Caption ="Société:"
                End
                Begin Label
                    Left =8265
                    Top =105
                    Width =1095
                    Height =285
                    Name ="ÉtiquetteCompteur"
                    Caption ="Compteur:"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =375
            OnFormat ="Totaux des ventes par montant.Affiche saut page"
            OnPrint ="Totaux des ventes par montant.Total page"
            Name ="Détail"
            Begin
                Begin TextBox
                    DecimalPlaces =0
                    Left =1874
                    Top =90
                    Width =1246
                    Name ="MontantVente"
                    ControlSource ="MontantVente"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                End
                Begin TextBox
                    Left =3300
                    Top =90
                    Width =705
                    ColumnWidth =945
                    TabIndex =1
                    Name ="N° commande"
                    ControlSource ="N° commande"
                    StatusBarText ="Unique order number."
                    EventProcPrefix ="N°_commande"
                End
                Begin TextBox
                    Left =4500
                    Top =90
                    Width =3645
                    TabIndex =2
                    Name ="Société"
                    ControlSource ="Société"
                End
                Begin PageBreak
                    Top =375
                    Name ="SautPageCaché"
                End
                Begin TextBox
                    RunningSum =2
                    Left =8790
                    Top =90
                    Width =540
                    TabIndex =3
                    Name ="Compteur"
                    ControlSource ="=1"
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =195
            OnFormat ="Totaux des ventes par montant.Cache pied page"
            Name ="PiedGroupe0"
            Begin
                Begin Line
                    LineSlant = NotDefault
                    BorderWidth =1
                    Left =1635
                    Top =120
                    Width =7711
                    BorderColor =8421504
                    Name ="Ligne13"
                End
            End
        End
        Begin PageFooter
            Height =420
            Name ="PiedPage"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =7890
                    Top =135
                    Height =270
                    Name ="NuméroPage"
                    ControlSource ="=\"Page \" & [Page] & \" sur \" & [Pages]"
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =3
                    Left =1874
                    Top =135
                    Width =1246
                    Height =270
                    TabIndex =1
                    Name ="TotalPage"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =285
                            Top =135
                            Width =1170
                            Height =285
                            Name ="ÉtiquetteTotalPage"
                            Caption ="Total page:"
                        End
                    End
                End
                Begin Line
                    BorderWidth =3
                    Top =105
                    Width =9346
                    BorderColor =12632256
                    Name ="Ligne16"
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
