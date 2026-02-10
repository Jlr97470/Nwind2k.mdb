Version =17
VersionRequired =17
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Width =5355
    DatasheetFontHeight =10
    ItemSuffix =16
    Left =930
    Top =600
    Right =6555
    Bottom =4830
    HelpContextId =430
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x84c23eb59440e140
    End
    Caption ="États ventes"
    HelpFile ="Nwind80.hlp>Right"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
        End
        Begin CommandButton
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin OptionButton
            SpecialEffect =2
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
        End
        Begin ListBox
            SpecialEffect =2
        End
        Begin Section
            Height =4260
            BackColor =-2147483633
            Name ="Détail"
            Begin
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    AccessKey =65
                    Left =3903
                    Top =240
                    Width =1200
                    TabIndex =1
                    Name ="Aperçu"
                    Caption ="&Aperçu"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    AccessKey =73
                    Left =3903
                    Top =757
                    Width =1200
                    TabIndex =2
                    Name ="Imprimer"
                    Caption ="&Imprimer"
                    OnClick ="[Event Procedure]"
                End
                Begin OptionGroup
                    OverlapFlags =93
                    Left =288
                    Top =240
                    Width =3330
                    Height =3840
                    Name ="ÉtatÀImprimer"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =215
                            Left =576
                            Top =120
                            Width =1095
                            Height =240
                            BackColor =-2147483633
                            ForeColor =-2147483630
                            Name ="ÉtiquetteÉtatÀImprimer"
                            Caption ="État à imprimer"
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =576
                            Top =510
                            OptionValue =1
                            Name ="VentesEmployésParPays"
                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =864
                                    Top =480
                                    Width =2475
                                    Height =240
                                    ForeColor =-2147483630
                                    Name ="ÉtiquetteVentesEmployésParPays"
                                    Caption ="Ventes par représentant par pays"
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =576
                            Top =870
                            OptionValue =2
                            Name ="RécapitulatifVentes"
                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =867
                                    Top =840
                                    Width =2340
                                    Height =240
                                    ForeColor =-2147483630
                                    Name ="ÉtiquetteRécapitulatifVentes"
                                    Caption ="Totaux des ventes par montant"
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =576
                            Top =1230
                            OptionValue =3
                            Name ="VentesParCatégorie"
                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =864
                                    Top =1200
                                    Width =1620
                                    Height =240
                                    ForeColor =-2147483630
                                    Name ="ÉtiquetteVentesParCatégorie"
                                    Caption ="Ventes par catégorie"
                                End
                            End
                        End
                    End
                End
                Begin ListBox
                    Enabled = NotDefault
                    OverlapFlags =215
                    Left =870
                    Top =2805
                    Width =2160
                    Height =1065
                    TabIndex =3
                    BorderColor =-2147483630
                    Name ="SélectionCatégorie"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [Nom de catégorie] FROM Catégories ORDER BY [Nom de catégorie"
                        "];"
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =864
                            Top =1560
                            Width =2730
                            Height =1050
                            ForeColor =-2147483630
                            Name ="ÉtiquetteInstructions"
                            Caption ="Pour imprimer seulement une catégorie de ventes, sélectionnez-en une dans la lis"
                                "te. Pour imprimer toutes les catégories, ne faites aucune sélection."
                        End
                    End
                End
                Begin CommandButton
                    Cancel = NotDefault
                    OverlapFlags =85
                    Left =3888
                    Top =1395
                    Width =1200
                    TabIndex =4
                    Name ="Annuler"
                    Caption ="Annuler"
                    OnClick ="[Event Procedure]"
                End
            End
        End
    End
End
CodeBehindForm
' See "Dialogue états ventes.cls"
