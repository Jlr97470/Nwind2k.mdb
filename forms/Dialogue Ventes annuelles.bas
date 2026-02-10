Version =17
VersionRequired =17
Begin Form
    Modal = NotDefault
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Width =4032
    DatasheetFontHeight =10
    ItemSuffix =1
    Left =2700
    Top =225
    Right =6495
    Bottom =2265
    HelpContextId =400
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x34f93fb59440e140
    End
    Caption ="Dialogue ventes annuelles"
    HelpFile ="Nwind80.hlp>Right"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
        End
        Begin CommandButton
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin CheckBox
            SpecialEffect =2
            LabelX =230
            LabelY =-30
        End
        Begin TextBox
            SpecialEffect =2
        End
        Begin Section
            Height =2295
            BackColor =-2147483633
            Name ="Détail"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =2160
                    Top =360
                    Height =255
                    Name ="Date début"
                    Format ="Medium Date"
                    DefaultValue ="=\"1-Janv-95\""
                    EventProcPrefix ="Date_début"
                    ControlTipText ="Entrez une date postérieure au 4-Aug-94."
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =132
                            Top =360
                            Width =1890
                            Height =240
                            Name ="ÉtiquetteDateDébut"
                            Caption ="Entrez une date de début:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2160
                    Top =750
                    Height =255
                    TabIndex =1
                    Name ="Date fin"
                    Format ="Medium Date"
                    DefaultValue ="=\"31-Déc-95\""
                    EventProcPrefix ="Date_fin"
                    ControlTipText ="Entrez une date antérieure au 5-Jun-96."
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =330
                            Top =750
                            Width =1695
                            Height =240
                            Name ="ÉtiquetteDateFin"
                            Caption ="Entrez une date de fin:"
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =2160
                    Top =1140
                    TabIndex =2
                    Name ="Affiche détails"
                    DefaultValue ="Yes"
                    EventProcPrefix ="Affiche_détails"
                    ControlTipText ="Imprime les détails des enregistrements si la case est cochée; masque ces détail"
                        "s dans le cas contraire."
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =540
                            Top =1095
                            Width =1485
                            Height =240
                            Name ="ÉtiquetteAfficheDétails"
                            Caption ="Afficher les détails ?"
                        End
                    End
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    Left =864
                    Top =1560
                    Width =1005
                    TabIndex =3
                    ForeColor =-2147483630
                    Name ="OK"
                    Caption ="OK"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Cliquez pour visualiser ou imprimer l'état."
                End
                Begin CommandButton
                    Cancel = NotDefault
                    OverlapFlags =85
                    Left =2160
                    Top =1560
                    Width =1005
                    TabIndex =4
                    ForeColor =-2147483630
                    Name ="Annuler"
                    Caption ="Annuler"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Cliquez pour fermer le formulaire et annuler l'impression ou l'aperçu de l'état."
                End
            End
        End
    End
End
CodeBehindForm
' See "Dialogue Ventes annuelles.cls"
