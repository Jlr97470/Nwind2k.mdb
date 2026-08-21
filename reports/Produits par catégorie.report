Version =17
VersionRequired =17
Begin Report
    LayoutForPrint = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Width =13680
    DatasheetFontHeight =10
    ItemSuffix =20
    Left =510
    Top =240
    HelpContextId =515
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x5df382689541e140
    End
    RecordSource ="Produits par catégorie"
    Caption ="Produits par catégorie"
    HelpFile ="Nwind80.hlp>Right"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            FontItalic = NotDefault
            BackStyle =0
            FontSize =10
            FontWeight =700
            FontName ="Arial"
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
            KeepTogether =2
            ControlSource ="Nom de catégorie"
        End
        Begin BreakLevel
            ControlSource ="Nom du produit"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =960
            BackColor =12632256
            Name ="EntêteÉtat"
            Begin
                Begin Label
                    Width =3870
                    Height =480
                    FontSize =18
                    Name ="Titre"
                    Caption ="Produits par catégorie"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    BackStyle =0
                    Top =615
                    Width =2100
                    FontSize =10
                    FontWeight =700
                    Name ="DateImpression"
                    ControlSource ="=Format(Date(),\"Medium Date\")"
                End
            End
        End
        Begin PageHeader
            Height =54
            BackColor =12632256
            Name ="EntêtePage"
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            RepeatSection = NotDefault
            NewRowOrCol =1
            Height =1080
            Name ="EntêteGroupe0"
            Begin
                Begin TextBox
                    Left =1185
                    Top =90
                    Width =2040
                    Height =330
                    ColumnWidth =1620
                    FontSize =12
                    FontWeight =700
                    Name ="Nom de catégorie"
                    ControlSource ="Nom de catégorie"
                    StatusBarText ="Name of food category."
                    EventProcPrefix ="Nom_de_catégorie"
                    Begin
                        Begin Label
                            Top =90
                            Width =1200
                            Height =330
                            FontSize =12
                            Name ="ÉtiquetteCatégorie"
                            Caption ="Catégorie:"
                        End
                    End
                End
                Begin Label
                    Top =615
                    Width =1620
                    Height =285
                    Name ="ÉtiquetteNomProduit"
                    Caption ="Nom du produit:"
                End
                Begin Label
                    Left =2685
                    Top =615
                    Width =1635
                    Height =285
                    Name ="ÉtiquetteUnitésStock"
                    Caption ="Unités en stock:"
                End
                Begin Line
                    BorderWidth =3
                    Top =555
                    Width =4320
                    BorderColor =12632256
                    Name ="Ligne13"
                End
                Begin Line
                    BorderWidth =3
                    Top =960
                    Width =4320
                    BorderColor =12632256
                    Name ="Ligne14"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =360
            Name ="Détail"
            Begin
                Begin TextBox
                    Width =3030
                    ColumnWidth =3000
                    Name ="Nom du produit"
                    ControlSource ="Nom du produit"
                    EventProcPrefix ="Nom_du_produit"
                End
                Begin TextBox
                    Left =3591
                    Width =570
                    ColumnWidth =1440
                    TabIndex =1
                    Name ="Unités en stock"
                    ControlSource ="Unités en stock"
                    Format ="General Number"
                    EventProcPrefix ="Unités_en_stock"
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            Height =495
            Name ="PiedGroupe1"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =1905
                    Top =195
                    Width =585
                    Height =255
                    Name ="NombreProduits"
                    ControlSource ="=Count([Nom du produit])"
                    Begin
                        Begin Label
                            Top =195
                            Width =1875
                            Height =255
                            FontSize =9
                            Name ="ÉtiquetteNombreProduits"
                            Caption ="Nombre de produits:"
                        End
                    End
                End
                Begin Line
                    BorderWidth =1
                    Top =75
                    Width =4320
                    BorderColor =12632256
                    Name ="Ligne9"
                End
            End
        End
        Begin PageFooter
            Height =300
            Name ="PiedPage"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    Left =5985
                    Top =15
                    Height =270
                    FontSize =10
                    FontWeight =700
                    Name ="NuméroPage"
                    ControlSource ="=\"Page \" & [Page]"
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
