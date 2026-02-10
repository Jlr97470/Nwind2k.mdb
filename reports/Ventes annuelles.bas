Version =17
VersionRequired =17
Begin Report
    LayoutForPrint = NotDefault
    DefaultView =0
    PageHeader =1
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Width =8790
    DatasheetFontHeight =10
    ItemSuffix =26
    Left =600
    Top =720
    HelpContextId =500
    DatasheetGridlinesColor =12632256
    OnNoData ="[Event Procedure]"
    RecSrcDt = Begin
        0xd90058b59440e140
    End
    RecordSource ="Ventes annuelles"
    OnOpen ="[Event Procedure]"
    OnClose ="[Event Procedure]"
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
            GroupOn =2
            ControlSource ="Date envoi"
        End
        Begin BreakLevel
            ControlSource ="Date envoi"
        End
        Begin BreakLevel
            ControlSource ="N° commande"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =1080
            Name ="EntêteÉtat"
            Begin
                Begin Label
                    FontItalic = NotDefault
                    Top =15
                    Width =3285
                    Height =465
                    FontSize =18
                    Name ="Titre"
                    Caption ="Ventes annuelles"
                End
                Begin TextBox
                    BackStyle =0
                    Top =630
                    Width =2430
                    FontWeight =700
                    Name ="DateImpression"
                    ControlSource ="=Format(Date(),\"Medium Date\")"
                End
            End
        End
        Begin PageHeader
            Height =630
            OnFormat ="[Event Procedure]"
            Name ="EntêtePage"
            Begin
                Begin Label
                    Left =3075
                    Top =135
                    Width =1440
                    Height =285
                    Name ="ÉtiquetteDateEnvoi1"
                    Caption ="Date envoi:"
                End
                Begin Label
                    TextAlign =3
                    Left =4830
                    Top =135
                    Width =1500
                    Height =285
                    Name ="ÉtiquetteCommandes1"
                    Caption ="N° commande:"
                End
                Begin Label
                    Left =7470
                    Top =135
                    Width =750
                    Height =285
                    Name ="ÉtiquetteVentes1"
                    Caption ="Ventes:"
                End
                Begin Label
                    Left =1440
                    Top =135
                    Width =1380
                    Height =285
                    Name ="ÉtiquetteNuméroLigne1"
                    Caption ="N° de ligne:"
                End
                Begin Line
                    BorderWidth =1
                    Top =495
                    Width =8790
                    Name ="Ligne23"
                End
                Begin TextBox
                    Visible = NotDefault
                    Left =315
                    Top =135
                    Width =525
                    Height =285
                    Name ="Montre"
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =1575
            OnFormat ="[Event Procedure]"
            Name ="EntêteGroupe0"
            Begin
                Begin Subform
                    BorderWidth =1
                    Top =15
                    Width =8790
                    Height =451
                    Name ="SousÉtatVentesAnnuelles"
                    SourceObject ="Report.Sous-état ventes annuelles"
                    LinkChildFields ="Année"
                    LinkMasterFields ="Année"
                End
                Begin Line
                    BorderWidth =3
                    Top =705
                    Width =8790
                    Name ="Ligne10"
                End
                Begin Label
                    Left =3075
                    Top =1140
                    Width =1440
                    Height =285
                    Name ="ÉtiquetteDateEnvoi2"
                    Caption ="Date envoi:"
                End
                Begin Label
                    TextAlign =3
                    Left =4800
                    Top =1140
                    Width =1470
                    Height =285
                    Name ="ÉtiquetteCommandesEnvoyées2"
                    Caption ="N° commande:"
                End
                Begin Label
                    Left =7485
                    Top =1140
                    Width =735
                    Height =285
                    Name ="ÉtiquetteVentes2"
                    Caption ="Ventes:"
                End
                Begin Line
                    BorderWidth =1
                    Left =1440
                    Top =1500
                    Width =7350
                    Name ="Ligne15"
                End
                Begin Label
                    Left =1440
                    Top =1140
                    Width =1380
                    Height =285
                    Name ="ÉtiquetteNuméroLigne2"
                    Caption ="N° de ligne:"
                End
                Begin TextBox
                    Top =765
                    Width =2250
                    Height =285
                    FontWeight =700
                    TabIndex =1
                    Name ="ÉtiquetteDétails"
                    ControlSource ="=\"Détails \" & [Année]"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =375
            OnFormat ="[Event Procedure]"
            Name ="Détail"
            Begin
                Begin TextBox
                    Left =3090
                    Top =15
                    Width =1140
                    ColumnWidth =1440
                    Name ="Date envoi"
                    ControlSource ="Date envoi"
                    Format ="Medium Date"
                    EventProcPrefix ="Date_envoi"
                End
                Begin TextBox
                    Left =5055
                    Top =15
                    Width =960
                    ColumnWidth =945
                    TabIndex =1
                    Name ="N° commande"
                    ControlSource ="N° commande"
                    StatusBarText ="Unique order number."
                    EventProcPrefix ="N°_commande"
                End
                Begin TextBox
                    DecimalPlaces =0
                    Left =6825
                    Top =15
                    TabIndex =2
                    Name ="SousTotal"
                    ControlSource ="SousTotal"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                End
                Begin TextBox
                    RunningSum =1
                    TextAlign =3
                    Left =1440
                    Top =15
                    Width =675
                    TabIndex =3
                    Name ="NuméroLigne"
                    ControlSource ="=1"
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            ForceNewPage =2
            Height =270
            OnFormat ="[Event Procedure]"
            OnRetreat ="[Event Procedure]"
            Name ="PiedGroupe1"
            Begin
                Begin Line
                    BorderWidth =1
                    Top =150
                    Width =8790
                    Name ="Ligne18"
                End
            End
        End
        Begin PageFooter
            Height =405
            Name ="PiedPage"
            Begin
                Begin TextBox
                    TextAlign =2
                    Left =3885
                    Top =120
                    Width =1650
                    Height =285
                    FontWeight =700
                    Name ="NuméroPage"
                    ControlSource ="=\"Page \" & [Page] & \" sur \" & [Pages]"
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
CodeBehindForm
' See "Ventes annuelles.cls"
