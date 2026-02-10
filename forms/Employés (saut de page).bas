Version =17
VersionRequired =17
Begin Form
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    AutoCenter = NotDefault
    DefaultView =0
    ScrollBars =0
    BorderStyle =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Cycle =2
    Width =8934
    DatasheetFontHeight =10
    ItemSuffix =43
    Left =225
    Top =30
    Right =9165
    Bottom =4725
    HelpContextId =415
    RecSrcDt = Begin
        0x69b61859d340e140
    End
    RecordSource ="Employés"
    Caption ="Employés"
    AfterUpdate ="Employés (saut de page).ActualiseRendCompteA"
    HelpFile ="Nwind80.hlp>Right"
    Begin
        Begin Label
            BackStyle =0
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
        End
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            PictureAlignment =2
        End
        Begin CommandButton
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin BoundObjectFrame
            SpecialEffect =2
        End
        Begin TextBox
            SpecialEffect =2
        End
        Begin ComboBox
            SpecialEffect =2
        End
        Begin FormHeader
            Height =510
            BackColor =8421376
            Name ="EntêteFormulaire"
            Begin
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =2
                    BackStyle =0
                    Left =5616
                    Top =120
                    Width =2880
                    Height =285
                    FontSize =10
                    FontWeight =700
                    ForeColor =16777215
                    Name ="NomEmployé"
                    ControlSource ="=[Prénom] & \" \" & ![Nom]"
                End
            End
        End
        Begin Section
            Height =8400
            BackColor =-2147483633
            Name ="Détail"
            Begin
                Begin PageBreak
                    OverlapFlags =85
                    Top =4200
                    Name ="SautPage"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =1
                    BackStyle =0
                    Left =2444
                    Top =120
                    Width =1740
                    FontWeight =700
                    ForeColor =128
                    Name ="N° employé"
                    ControlSource ="N° employé"
                    StatusBarText ="Numéro automatiquement assigné aux nouveaux employés."
                    EventProcPrefix ="N°_employé"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1095
                            Top =120
                            Width =1215
                            Height =240
                            FontWeight =700
                            ForeColor =128
                            Name ="ÉtiquetteN°employé"
                            Caption ="N° employé:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2444
                    Top =960
                    Width =1530
                    TabIndex =2
                    Name ="Nom"
                    ControlSource ="Nom"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1260
                            Top =960
                            Width =1050
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteNom"
                            Caption ="Nom:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2444
                    Top =495
                    Width =885
                    TabIndex =1
                    Name ="Prénom"
                    ControlSource ="Prénom"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1245
                            Top =495
                            Width =1050
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquettePrénom"
                            Caption ="Prénom:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2444
                    Top =1455
                    Width =2279
                    TabIndex =3
                    Name ="Fonction"
                    ControlSource ="Fonction"
                    StatusBarText ="Fonction de l'employé."
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1425
                            Top =1440
                            Width =885
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteFonction"
                            Caption ="Fonction:"
                        End
                    End
                End
                Begin BoundObjectFrame
                    TabStop = NotDefault
                    SizeMode =3
                    OverlapFlags =85
                    Left =5616
                    Top =240
                    Width =2808
                    Height =3239
                    TabIndex =7
                    Name ="Photo"
                    ControlSource ="Photo"
                    StatusBarText ="Photo de l'employé."
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =2
                    Left =2444
                    Top =1920
                    Width =2279
                    ColumnWidth =1620
                    TabIndex =4
                    Name ="Rend compte à"
                    ControlSource ="Rend compte à"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [N° employé], [Nom] & \", \" & [Prénom] AS RendCompteA FROM E"
                        "mployés ORDER BY Nom, Prénom;"
                    ColumnWidths ="0"
                    StatusBarText ="Superviseur de l'employé."
                    EventProcPrefix ="Rend_compte_à"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =810
                            Top =1920
                            Width =1500
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteRendCompteA"
                            Caption ="Rend compte à:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =2444
                    Top =7080
                    TabIndex =16
                    Name ="Date de naissance"
                    ControlSource ="Date de naissance"
                    Format ="Medium Date"
                    EventProcPrefix ="Date_de_naissance"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =570
                            Top =7080
                            Width =1740
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteDateNaiss"
                            Caption ="Date de naissance:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =2444
                    Top =2415
                    TabIndex =5
                    Name ="Date d'embauche"
                    ControlSource ="Date d'embauche"
                    Format ="Medium Date"
                    EventProcPrefix ="Date_d_embauche"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =615
                            Top =2400
                            Width =1695
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteDateEmbauche"
                            Caption ="Date d'embauche:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2444
                    Top =4695
                    Width =2880
                    Height =449
                    TabIndex =9
                    Name ="Adresse"
                    ControlSource ="Adresse"
                    StatusBarText ="Rue ou boîte postale."
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1380
                            Top =4680
                            Width =930
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteAdresse"
                            Caption ="Adresse:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2444
                    Top =5280
                    TabIndex =10
                    Name ="Ville"
                    ControlSource ="Ville"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1800
                            Top =5280
                            Width =510
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteVille"
                            Caption ="Ville:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5250
                    Top =5295
                    TabIndex =11
                    Name ="Région"
                    ControlSource ="Région"
                    StatusBarText ="Etat ou province."
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =4320
                            Top =5280
                            Width =750
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteRégion"
                            Caption ="Région:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2444
                    Top =5640
                    TabIndex =12
                    Name ="Code postal"
                    ControlSource ="Code postal"
                    EventProcPrefix ="Code_postal"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1140
                            Top =5640
                            Width =1170
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteCodePostal"
                            Caption ="Code postal:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5250
                    Top =5640
                    TabIndex =13
                    Name ="Pays"
                    ControlSource ="Pays"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =4320
                            Top =5640
                            Width =795
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquettePays"
                            Caption ="Pays:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2444
                    Top =6120
                    TabIndex =14
                    Name ="Tél domicile"
                    ControlSource ="Tél domicile"
                    StatusBarText ="Numéro de téléphone incluant le code du pays ou de la zone."
                    EventProcPrefix ="Tél_domicile"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =390
                            Top =6120
                            Width =1920
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteTéléphoneDom"
                            Caption ="Téléphone domicile:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2444
                    Top =2895
                    TabIndex =6
                    Name ="Extension"
                    ControlSource ="Extension"
                    StatusBarText ="Numéro de l'extension téléphonique interne."
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =1335
                            Top =2880
                            Width =975
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteExtension"
                            Caption ="Extension:"
                        End
                    End
                End
                Begin TextBox
                    ScrollBars =2
                    OverlapFlags =85
                    Left =4320
                    Top =6465
                    Width =3585
                    Height =870
                    TabIndex =17
                    Name ="Notes"
                    ControlSource ="Notes"
                    StatusBarText ="Informations générales sur la formation de l'employé."
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =4320
                            Top =6120
                            Width =645
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteNotes"
                            Caption ="Notes:"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =3
                    Left =226
                    Top =4251
                    Width =2820
                    Height =300
                    FontSize =10
                    FontWeight =700
                    ForeColor =128
                    Name ="ÉtiquetteInfoPerso"
                    Caption ="Informations personnelles:"
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    Left =2444
                    Top =6600
                    TabIndex =15
                    Name ="Titre de courtoisie"
                    ControlSource ="Titre de courtoisie"
                    RowSourceType ="Value List"
                    RowSource ="Dr.;Mlle;Mme;M."
                    StatusBarText ="Titre utilisé lors de salutations."
                    EventProcPrefix ="Titre_de_courtoisie"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =615
                            Top =6585
                            Width =1695
                            Height =240
                            FontWeight =700
                            Name ="ÉtiquetteTitreCourtoisie"
                            Caption ="Titre de courtoisie:"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    AccessKey =80
                    Left =2144
                    Top =3567
                    Width =2550
                    Height =435
                    FontWeight =700
                    TabIndex =8
                    ForeColor =128
                    Name ="InfoPerso"
                    Caption ="Informations &personnelles"
                    OnClick ="Employés (saut de page).InfosPersonnelles"
                End
                Begin CommandButton
                    OverlapFlags =85
                    AccessKey =83
                    Left =2384
                    Top =7768
                    Width =1980
                    Height =435
                    FontWeight =700
                    TabIndex =18
                    ForeColor =128
                    Name ="InfoSociété"
                    Caption ="Informations &société"
                    OnClick ="Employés (saut de page).InfosSociété"
                End
                Begin Line
                    OverlapFlags =85
                    Left =315
                    Top =3480
                    Width =5184
                    BorderColor =128
                    Name ="Ligne35"
                End
                Begin Line
                    LineSlant = NotDefault
                    OverlapFlags =87
                    Left =300
                    Top =4545
                    Width =7623
                    BorderColor =128
                    Name ="Ligne36"
                End
                Begin Line
                    OverlapFlags =85
                    Left =314
                    Top =7680
                    Width =7623
                    BorderColor =128
                    Name ="Ligne37"
                End
            End
        End
        Begin FormFooter
            Height =0
            BackColor =12632256
            Name ="PiedFormulaire"
        End
    End
End
