Version =17
VersionRequired =17
Begin Report
    LayoutForPrint = NotDefault
    OrderByOn = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =20
    GridY =24
    Width =3715
    DatasheetFontHeight =10
    ItemSuffix =6
    Left =30
    Top =15
    HelpContextId =500
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x4dfe4fb59440e140
    End
    RecordSource ="Clients"
    HelpFile ="Nwind80.hlp>Right"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin TextBox
            AutoLabel = NotDefault
            OldBorderStyle =0
            Height =300
            FontSize =9
            FontWeight =300
            FontName ="Arial"
        End
        Begin BreakLevel
            ControlSource ="Pays"
        End
        Begin BreakLevel
            ControlSource ="Code postal"
        End
        Begin BreakLevel
            ControlSource ="Société"
        End
        Begin Section
            KeepTogether = NotDefault
            Name ="Détail"
            Begin
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    Left =288
                    Top =240
                    Width =3204
                    Name ="LigneSociété"
                    ControlSource ="=Trim([Société])"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    Left =288
                    Top =540
                    Width =3204
                    TabIndex =1
                    Name ="LigneAdresse1"
                    ControlSource ="=Trim([Adresse])"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    Left =288
                    Top =840
                    Width =3204
                    TabIndex =2
                    Name ="LigneAdresse2"
                    ControlSource ="=Trim([Ville] & \" \" & [Région] & \"  \" & [Code postal])"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    TextAlign =1
                    Left =288
                    Top =1140
                    Width =3204
                    TabIndex =3
                    Name ="LignePays"
                    ControlSource ="=Trim([Pays])"
                End
            End
        End
    End
End
