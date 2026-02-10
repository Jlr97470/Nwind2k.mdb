Version =17
VersionRequired =17
Begin Form
    RecordSelectors = NotDefault
    ShortcutMenu = NotDefault
    AutoCenter = NotDefault
    AllowDeletions = NotDefault
    AllowAdditions = NotDefault
    ScrollBars =2
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Width =8640
    DatasheetFontHeight =10
    ItemSuffix =83
    Left =240
    Top =45
    Right =8880
    Bottom =4995
    HelpContextId =410
    Filter ="[Société] Like \"[ZÆØÅ]*\""
    RecSrcDt = Begin
        0x3c5045b59440e140
    End
    RecordSource ="Clients"
    Caption ="Liste téléphonique des clients"
    HelpFile ="Nwind80.hlp>Right"
    Begin
        Begin Label
            BackStyle =0
            FontWeight =700
            FontName ="Arial"
        End
        Begin CommandButton
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin OptionGroup
            AutoLabel = NotDefault
            OldBorderStyle =0
        End
        Begin TextBox
            FontName ="Arial"
        End
        Begin ToggleButton
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin FormHeader
            DisplayWhen =2
            Height =370
            BackColor =13434879
            Name ="PiedPage"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =3168
                    Top =72
                    Width =840
                    Height =240
                    Name ="ÉtiquetteContact"
                    Caption ="Contact:"
                End
                Begin Label
                    OverlapFlags =85
                    Left =288
                    Top =72
                    Width =1455
                    Height =240
                    Name ="ÉtiquetteSociété"
                    Caption ="Société:"
                End
                Begin Label
                    OverlapFlags =85
                    Left =5190
                    Top =75
                    Width =1005
                    Height =240
                    Name ="ÉtiquetteTéléphone"
                    Caption ="Téléphone:"
                End
                Begin Label
                    OverlapFlags =85
                    Left =6912
                    Top =72
                    Width =450
                    Height =240
                    Name ="ÉtiquetteFax"
                    Caption ="Fax:"
                End
            End
        End
        Begin PageHeader
            DisplayWhen =1
            Height =810
            Name ="EntêtePage"
            Begin
                Begin Line
                    OverlapFlags =85
                    Top =720
                    Width =8640
                    Name ="Ligne74"
                End
                Begin Label
                    OverlapFlags =85
                    Left =3165
                    Top =450
                    Width =840
                    Height =240
                    Name ="ÉtiquetteContact2"
                    Caption ="Contact:"
                End
                Begin Label
                    OverlapFlags =85
                    Left =285
                    Top =450
                    Width =1455
                    Height =240
                    Name ="ÉtiquetteSociété2"
                    Caption ="Société:"
                End
                Begin Label
                    OverlapFlags =85
                    Left =5175
                    Top =450
                    Width =1005
                    Height =240
                    Name ="ÉtiquetteTéléphone2"
                    Caption ="Téléphone:"
                End
                Begin Label
                    OverlapFlags =85
                    Left =6912
                    Top =450
                    Width =450
                    Height =240
                    Name ="ÉtiquetteFax2"
                    Caption ="Fax:"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =2385
                    Width =3360
                    Height =315
                    FontSize =11
                    FontWeight =600
                    Name ="ÉtiquetteListeTéléphoniqueClients"
                    Caption ="Liste téléphonique des clients"
                End
                Begin Line
                    OverlapFlags =85
                    Top =390
                    Width =8640
                    Name ="Ligne81"
                End
            End
        End
        Begin Section
            Height =360
            Name ="Détail"
            Begin
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =85
                    Left =3168
                    Top =54
                    Width =1890
                    ColumnWidth =1410
                    TabIndex =1
                    BorderColor =8421504
                    Name ="Contact"
                    ControlSource ="Contact"
                End
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =85
                    Left =5184
                    Top =54
                    Width =1590
                    ColumnWidth =1170
                    TabIndex =2
                    BorderColor =8421504
                    Name ="Téléphone"
                    ControlSource ="Téléphone"
                    StatusBarText ="Le numéro de téléphone inclut le code du pays ou de la zone."
                End
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =85
                    Left =6912
                    Top =54
                    Width =1590
                    ColumnWidth =1170
                    TabIndex =3
                    BorderColor =8421504
                    Name ="Fax"
                    ControlSource ="Fax"
                    StatusBarText ="Le numéro de téléphone inclut le code du pays ou de la zone."
                End
                Begin TextBox
                    OldBorderStyle =0
                    OverlapFlags =85
                    Left =288
                    Top =54
                    Width =2745
                    ColumnWidth =2610
                    BorderColor =8421504
                    Name ="Société"
                    ControlSource ="Société"
                End
            End
        End
        Begin PageFooter
            DisplayWhen =1
            Height =480
            Name ="PiedPage1"
            Begin
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =2
                    Left =6480
                    Top =120
                    Width =2160
                    Name ="NuméroDePage"
                    ControlSource ="=\"Page \" & [Page]"
                End
                Begin Line
                    OverlapFlags =85
                    Top =75
                    Width =8640
                    Name ="Ligne75"
                End
                Begin TextBox
                    FontItalic = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =1
                    Top =120
                    Width =2160
                    TabIndex =1
                    Name ="DateImpression"
                    ControlSource ="=Format(Date(),\"Medium Date\")"
                End
            End
        End
        Begin FormFooter
            DisplayWhen =2
            Height =630
            BackColor =-2147483633
            Name ="PiedFormulaire"
            Begin
                Begin OptionGroup
                    OverlapFlags =85
                    Left =60
                    Top =45
                    Width =8490
                    Height =525
                    Name ="FiltresParNomSociété"
                    StatusBarText ="Choisissez un filtre pour le nom de la société."
                    AfterUpdate ="Liste téléphonique des clients.Boutons Alpha"
                    DefaultValue ="27"
                    Begin
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =65
                            Left =180
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =1
                            ForeColor =-2147483630
                            Name ="A"
                            Caption ="&A"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =66
                            Left =466
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =2
                            ForeColor =-2147483630
                            Name ="B"
                            Caption ="&B"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =67
                            Left =754
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =3
                            ForeColor =-2147483630
                            Name ="C"
                            Caption ="&C"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =68
                            Left =1057
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =4
                            ForeColor =-2147483630
                            Name ="D"
                            Caption ="&D"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =69
                            Left =1345
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =5
                            ForeColor =-2147483630
                            Name ="E"
                            Caption ="&E"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =70
                            Left =1633
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =6
                            ForeColor =-2147483630
                            Name ="F"
                            Caption ="&F"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =71
                            Left =1921
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =7
                            ForeColor =-2147483630
                            Name ="G"
                            Caption ="&G"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =72
                            Left =2209
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =8
                            ForeColor =-2147483630
                            Name ="H"
                            Caption ="&H"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =73
                            Left =2511
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =9
                            ForeColor =-2147483630
                            Name ="I"
                            Caption ="&I"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =74
                            Left =2799
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =10
                            ForeColor =-2147483630
                            Name ="J"
                            Caption ="&J"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =75
                            Left =3087
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =11
                            ForeColor =-2147483630
                            Name ="K"
                            Caption ="&K"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =76
                            Left =3375
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =12
                            ForeColor =-2147483630
                            Name ="L"
                            Caption ="&L"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =77
                            Left =3660
                            Top =150
                            Width =304
                            Height =360
                            FontWeight =700
                            OptionValue =13
                            ForeColor =-2147483630
                            Name ="M"
                            Caption ="&M"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =78
                            Left =3990
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =14
                            ForeColor =-2147483630
                            Name ="N"
                            Caption ="&N"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =79
                            Left =4275
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =15
                            ForeColor =-2147483630
                            Name ="O"
                            Caption ="&O"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =80
                            Left =4560
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =16
                            ForeColor =-2147483630
                            Name ="P"
                            Caption ="&P"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =81
                            Left =4845
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =17
                            ForeColor =-2147483630
                            Name ="Q"
                            Caption ="&Q"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =82
                            Left =5130
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =18
                            ForeColor =-2147483630
                            Name ="R"
                            Caption ="&R"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =83
                            Left =5415
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =19
                            ForeColor =-2147483630
                            Name ="S"
                            Caption ="&S"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =84
                            Left =5700
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =20
                            ForeColor =-2147483630
                            Name ="T"
                            Caption ="&T"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =85
                            Left =5985
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =21
                            ForeColor =-2147483630
                            Name ="U"
                            Caption ="&U"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =86
                            Left =6270
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =22
                            ForeColor =-2147483630
                            Name ="V"
                            Caption ="&V"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =87
                            Left =6555
                            Top =150
                            Width =341
                            Height =360
                            FontWeight =700
                            OptionValue =23
                            ForeColor =-2147483630
                            Name ="W"
                            Caption ="&W"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =88
                            Left =6930
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =24
                            ForeColor =-2147483630
                            Name ="X"
                            Caption ="&X"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =89
                            Left =7215
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =25
                            ForeColor =-2147483630
                            Name ="Y"
                            Caption ="&Y"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            AccessKey =90
                            Left =7500
                            Top =150
                            Width =259
                            Height =360
                            FontWeight =700
                            OptionValue =26
                            ForeColor =-2147483630
                            Name ="Z"
                            Caption ="&Z"
                        End
                        Begin ToggleButton
                            OverlapFlags =87
                            Left =7860
                            Top =150
                            Width =596
                            Height =360
                            FontWeight =700
                            OptionValue =27
                            ForeColor =-2147483630
                            Name ="Tous"
                            Caption ="Tous"
                        End
                    End
                End
            End
        End
    End
End
