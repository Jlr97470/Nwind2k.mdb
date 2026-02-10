Version =17
VersionRequired =17
Begin Report
    LayoutForPrint = NotDefault
    FilterOn = NotDefault
    DefaultView =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =0
    Width =9367
    DatasheetFontHeight =10
    ItemSuffix =64
    Left =390
    Top =180
    HelpContextId =500
    Filter ="[N° commande]>11072"
    RecSrcDt = Begin
        0xfd3451b59440e140
    End
    RecordSource ="Factures"
    Caption ="Factures"
    HelpFile ="Nwind80.hlp>Right"
    Begin
        Begin Label
            BackStyle =0
            FontSize =11
            FontWeight =700
            FontName ="Haettenschweiler"
        End
        Begin Image
            OldBorderStyle =0
            PictureAlignment =2
        End
        Begin CommandButton
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin OptionGroup
            BackStyle =1
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
            SortOrder = NotDefault
            GroupHeader = NotDefault
            GroupFooter = NotDefault
            ControlSource ="N° commande"
        End
        Begin BreakLevel
            ControlSource ="Réf produit"
        End
        Begin PageHeader
            Height =1920
            Name ="EntêtePage"
            Begin
                Begin Label
                    TextAlign =3
                    Left =7875
                    Top =105
                    Width =1470
                    Height =495
                    FontSize =20
                    FontWeight =400
                    ForeColor =8388608
                    Name ="ÉtiquetteFacture"
                    Caption ="FACTURE"
                End
                Begin TextBox
                    TextAlign =3
                    Left =8160
                    Top =1380
                    Width =1185
                    Height =270
                    FontSize =10
                    Name ="DateImpression"
                    ControlSource ="=Format(Date(),\"Medium Date\")"
                    Format ="Medium Date"
                    Begin
                        Begin Label
                            Left =7635
                            Top =1350
                            Width =480
                            Height =285
                            FontSize =12
                            FontWeight =400
                            ForeColor =8388608
                            Name ="ÉtiquetteDate"
                            Caption ="Date:"
                        End
                    End
                End
                Begin Label
                    FontItalic = NotDefault
                    TextFontFamily =18
                    Left =30
                    Top =1440
                    Width =4560
                    Height =465
                    FontSize =8
                    FontWeight =400
                    BorderColor =8388608
                    ForeColor =8388608
                    Name ="ÉtiquetteAdresse"
                    Caption ="Parc d'activités La Grenouillère 15, rue du Moulin, 44000 Nantes Tél (33) 08.80."
                        "22.22 Fax (33) 08.80.20.20"
                    FontName ="Times New Roman"
                End
                Begin Line
                    BorderWidth =2
                    Top =1290
                    Width =9360
                    BorderColor =8388608
                    Name ="Ligne96"
                End
                Begin Image
                    Left =1247
                    Top =330
                    Width =2820
                    Height =540
                    Name ="NomLogo"
                    PictureData = Begin
                        0x28000000bc000000240000000100040000000000800d00000000000000000000 ,
                        0x1000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff0000ff000000ffff00ff000000ff00ff00 ,
                        0xffff0000ffffff00ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffff0f00ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffff7f77ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffbfbbffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffff0f00ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffff77777777777777777777fffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffff7fffff7777 ,
                        0x7fffffffffffbfbbffff444444444444444444447fffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffffffffffffff477ff744444 ,
                        0x777fffffffff0f00ffffff4444447fffffff44447fffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffffffffffffff447744ffff4 ,
                        0x4477fffffffffffffffffff444447ffffffff4447fffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffffffffffffff4444fffffff ,
                        0x44477fffffff4f44fffffff444447fffffffff4477ffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffffffffffffff4447fffffff ,
                        0xf44477ffffff1f11fffffff444447ffffffffff447ffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffffffffffffff444ffffffff ,
                        0xf44447ffffffefeefffffff444447ffffffffff447ffff777777777777777777 ,
                        0x7777777777777777777777777777777777777777777777777777777777777777 ,
                        0x777777777777777777777777777777777777777777777777777ff447ffffffff ,
                        0xf44447ffffffcffffffffff444447fffffffffff47fff4444444444444444444 ,
                        0x4444444444444444444444444444444444444444444444444444444444444444 ,
                        0x44444444444444444444444444444444444444444444444444fff44fffffffff ,
                        0x444447ffffff3ffffffffff444447fffffffffff4ffff4444444444444444444 ,
                        0x4444444444444444444444444444444444444444444444444444444444444444 ,
                        0x44444444444444444444444444444444444444444444444444fff47ffffffff4 ,
                        0x444447fffffffffffffffff444447fffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffffffffffffff4fffffff744 ,
                        0x444447ffffffcffffffffff444447ffffff77777777777fff7ff77777fffffff ,
                        0xffffff777777fffffffff777777fffff77777fff7fff77777777777777ffffff ,
                        0xffff7777777ffffffff777777fffff77777777777777ffff7777fffffff74444 ,
                        0x44444fffffff3ffffffffff444447fffff4444444444477f4774444477ffffff ,
                        0xffff7444444f77fffff7444444777ff44444fff47ff44444444444444fffffff ,
                        0xfff4444444fffffff7444444777ff44444444444444ffff4444fffffff444444 ,
                        0x4444ffffffffdfddfffffff444447fffffff4447ffff447f444fff44477fffff ,
                        0xfff4444ffff44f7fff444ffff44477fff47fff4477fff4447fff4447ffffffff ,
                        0xfffff4447fffffff444ffff44477fff4447fff4447ffff444fffffff74444444 ,
                        0x444fffffffff0f77fffffff444447fffffff4447fffff47f44fffff4447fffff ,
                        0xff4447fffffff4fff4447fffff4447fff47fff4447fff4447fff4447ffffffff ,
                        0xfffff4447ffffff4447fffff4447fff4447fff4447fff444fffffff444444444 ,
                        0x44ffffffffff7ffffffffff444447fffffff4447ff7ff4ff47fffff4447fffff ,
                        0xff444ffffffffffff444ffffff44477ff47ff4444f7ff4447fff4447ffffffff ,
                        0xfffff4447ffffff444ffffff44477ff4447fff4447ff4447ffffff4444444444 ,
                        0x4fffffffffffefeefffffff444447fffffff4447f47fffff4fffff4444ffffff ,
                        0xf4447fffffffffff4447fffffff4447ff47ff444747ff4447fff4447ffffffff ,
                        0xfffff4447fffff4447fffffff4447ff4447fff4447ff444fffffff444444444f ,
                        0xffffffffffffeffffffffff444447fffffff4447f47fffffffff74444fffffff ,
                        0xf4447fffffffffff4447fffffff4447ff47ff444f477f4447fff444777777fff ,
                        0xfffff4447fffff4447fffffff4447ff4447fff4447744477fffff44444444fff ,
                        0xffff7fffffff7ffffffffff444447fffffff4447447ffffffff44444ffffffff ,
                        0xf4447fffffffffff4447fffffff4447ff47f4447f447f4447fff44444444777f ,
                        0xfffff4447fffff4447fffffff4447ff4447fff44444444477ffff444444fffff ,
                        0xfff47fffffffcfccfffffff444447fffffff4444447fffffff44444fffffffff ,
                        0xf4447fffffffffff4447fffffff4447ff47f4447ff47f4447fff4447fff44477 ,
                        0xfffff4447fffff4447fffffff4447ff4447fff4447fff44477fff44444ffffff ,
                        0xfff47fffffff8ffffffffff444447fffffff4447447ffffff4444ffff7ffffff ,
                        0xf4447fffffffff7f4447fffffff4447ff474444fff4f74447fff4447ffff4447 ,
                        0xfffff4447fffff4447fffffff4447ff4447fff4447ffff4447fff44447ffffff ,
                        0xff447fffffff7ffffffffff444447fffffff4447f47ff7ff4444ffff47ffffff ,
                        0xf44477fffffff47f44477ffffff444fff474447ffff474447fff4447ffff4447 ,
                        0xfffff4447fffff44477ffffff444fff4447fff4447ffff4447fff44447ffffff ,
                        0xff447fffffff9f99fffffff444447fffffff4447f4ff47ff4447ffff47ffffff ,
                        0xff4447ffffff447ff4447fffff4447fff47444fffff4f4447fff4447ffff4447 ,
                        0xf7fff4447ffff7f4447fffff4447fff4447fff4447ffff4447ffff44477fffff ,
                        0xf4447fffffff4ffffffffff4444477ffffff4447ffff47ff44477ff447ffffff ,
                        0xff444777ffff447ff44477ffff444ffff44447ffffff44447fff4447ffff444f ,
                        0x47fff4447fff47f44477ffff444ffff4447fff4447ffff444fffff444477ffff ,
                        0x44447ffffffffffffffff74444444777fff74447777447fff444774447ffffff ,
                        0xfff444477774447fff4447777444ffff744447ffffff444477774447777444ff ,
                        0x47777444777747ff4447777444ffff744477774447777444fffffff444477774 ,
                        0x4ff47fffffffbfbbffff44444444444fff44444444444fffff4444ff4fffffff ,
                        0xfffff444444ff4ffffff444444fffff444444fffffff4444444444444444ffff ,
                        0x4444444444444fffff444444fffff444444444444444444ffffffffff444444f ,
                        0xfff4ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffff7f77ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffefeeffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffff7f77ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffff0000000000000000
                    End
                    ObjectPalette = Begin
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff00000000ff0000ffff00000000ff00ff00ff0000ffff00 ,
                        0xffffff0000000000
                    End
                    Picture ="LOGO22.BMP"
                End
                Begin Image
                    Left =30
                    Width =1260
                    Height =1260
                    Name ="ImageLogo"
                    PictureData = Begin
                        0x2800000054000000540000000100040000000000700e0000ce0e0000c40e0000 ,
                        0x1000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff0000ff000000ffff00ff000000ff00ff00 ,
                        0xffff0000ffffff00fffffffffffffffffffffffffffffffffffffffff3bfffff ,
                        0xffffffffffffffffffffffffffffffffffff7effffffffffffffffffffffffff ,
                        0xfffffffffffffffb3bbbffffffffffffffffffffffffffffffffffffffffdfdf ,
                        0xffffffffffffffffffffffffffffffffffffffffbbbbbfffffffffffffffffff ,
                        0xffffffffffffffffffffbbffffffffffffffffffffffffffffffffffffffff3b ,
                        0xb03bbbfffffffffffffffffffffffffffffffffffffff6ffffffffffffffffff ,
                        0xffffffffffffffffffffbbbbfe30bbbfffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffffffbb8feee3bbfffffffff ,
                        0xffffffffffffffffffffffffffffbbffffffffffffffffffffffffffffffffff ,
                        0xffff3b0eee8ee0b0ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffbb3bbe66e6eee303fffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffbb0e666668eee0 ,
                        0x80ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffbbb0ee66666eeeee3b3fffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffbfb0ee6f666666e8eef30ffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffffffffffffffff330eeee6e ,
                        0x66ee6e66ee000fffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffb8008ee666eeee6ee688e8b8fffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffbf308e6ee66e666666ee68eee087f ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff030e ,
                        0xe6ee66666e666666ee8ee08bbfffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffff830eeeee666f66eeef666eee8ef000fffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffb300eeeee6666f6e6e86ffe ,
                        0x666eee8080ffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xff88ee866eeeeee666ee666f6666eeee090fffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffbb00eee666666e6666666ee666e6e8effe8b0ffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffbb081006ee6e666666 ,
                        0x0e66600000e6066060088fffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffff308011001001110066066666000666006e666f00ffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffbf080011000001010000606e66600000066e ,
                        0xeef6808ffffffffffffffffffffffffffffffffffffffffffffbba088f0000e0 ,
                        0x0000001100ee6666000e6feefffff8f0ffffffffffffffffffffffffffffffff ,
                        0xffffffffffbfa0788e8e88f00000100000000600606ff66eff8fff08bfffffff ,
                        0xffffffffffffffffffffffffffffffffff0888ee8f8f8888ff00000000000000 ,
                        0x6666fffffffffff900fffffffffffffffffffffffffffffffffffffff880e888 ,
                        0x88ff8ffe8fe0070700000000eee6e6eefffffffff88fffffffffffffffffffff ,
                        0xfffffffffffffff0a808ee8e88f8fefffff0070ff0000006fefe666fffffffff ,
                        0xf099ffffffffffffffffffffffffffffffffff080088eeeef88ffffeff8807f0 ,
                        0x770000066eeffef666f6fffff8990ffffffffffffffffffffffffffffffff080 ,
                        0x88f8ee88e888fffef8ff07f8000f000f6feff6fffffff8f8fff880ffffffffff ,
                        0xffffeeeaffffffffffffbfa0ffeee8888fff888fffff07f70007000f66eeffff ,
                        0xffffffffffff009ffffffffffffffffffffffffffffb2808eeee888f8fffffff ,
                        0xfff807f70770000fff666fffffffffffffff8989ffffffffffff3333ffffffff ,
                        0xfffa277888effe88fffffff88ff8078f07f0000fffffffffffff8f8f8fffff88 ,
                        0x9fffffffffffddddffffffffff2207ee8e8ee8fffffffff8feff07f77700000f ,
                        0x8fffffff8ffffffffff88f89ddffffffffffeeeeffffffff2e888ee8e8e88e8f ,
                        0xfffff8ef8fff0780f000000fff8feff8ffffffff88fff8ff993fffffffffffff ,
                        0xffffffff827e8eeeff88e8fffffffffff8fe07f87000000ff8fff8ffffffffff ,
                        0xff8fff8ff899ffffffff3333ffffff20208efe8ff8888f888effffffff8807f0 ,
                        0x0000000f8f888fffff888fffff88ff8fff939fffffffddddffffff2a8efeee8e ,
                        0xffe888fff88fffffffff07f7f000000fffff88ffffff88ffffff8ffffff333ff ,
                        0xffffeeeefffff220e8ffffefee88f8888f88fff8fff807f0f700007ffeffffff ,
                        0xffffffefffffffffffff199fffffffffffffaa2efffffff888ee8fffff88fff8 ,
                        0xff8f07f08700007ef8ff888fff888ffef88fff88fffff199ffff3333fffaaae8 ,
                        0x8ee8e8eee8e88888e88e88ffef8f07f8700f7088f8ffff8fe8ff8888fe8f8fff ,
                        0xf8ffff199fffddddf2aa2e8eeeeeeeee8ee8ee8ee888e8ff888807f7007000fe ,
                        0xffff8feff8ffff8fff8ffff8fffffff151ffeeee222208e88eee8ee8ee8ee88e ,
                        0x8e888888ffff07f8000000ff8e8ff8fffffffff8eff8ff8ffff8fff8199fffff ,
                        0xaa2afe8eee8eee8ee8ee8e888888e888888e07f8077000f8f8fffeffffff8fff ,
                        0x8ff888fff8f8ffff39993333ffa2ae8e8ee8eeee8ee8e88888888e88e88f07f8 ,
                        0x070700f8ffef8ffff8f8fff8fff8f8ffffff8ff8939fddddfff2a28ee8eee8e8 ,
                        0x8e8e8eeeee88ee8888f8f0ff770700fff888f8ffffffffef8f8f8fff8ff8ff81 ,
                        0xd9ffeeeeffffe24feeefe888ee8eee888ee8e88e88f8f0fff0f000f8f8fff8ff ,
                        0xff8fffff8ff8f8ff8fff88099ffffffffffffea28eeeeeeeeeeee8eee8ee8ee8 ,
                        0x8f8880f08f0000ff8e88fff8f88ff8ffefff8ffffff88339ffff3333ffffff82 ,
                        0xa8e8eeee88e88ee88e88ee88e8e8f0ff000000f8f8ff888ffff88f88f888f888 ,
                        0x8ff811ffffffddddfffffffe02aeee8e8eee888e8eee8eeeee8e80f07000008f ,
                        0xefff88f8f8fff8f8f8f88f88ff8197ffffffeeeeffffffff8e2ee8eeeee888ee ,
                        0x8e88ee8e88888000000000ffffffff8fff88f8f8ff888f8ff8910fffffffffff ,
                        0xfffffffff0028eeeeeeefee8eeee8eee8f870000000000007ffff8fffffff8ff ,
                        0xf8ff8f888970ffffffff3333ffffffffff0e2eeeeeffeeeeeeee8e8e8e807070 ,
                        0x70777f70ff7fff8ffff8f8fffeffff8e797fffffffffddddfffffffffff0028e ,
                        0xee88e8eeee8fee8ee880e0ff800000e0fffff8fffff88fffffffff481fffffff ,
                        0xffffeeeeffffffffffff8e2ee888eeee8ee8ee8eee8877ff8870077fffff8ffe ,
                        0xf88f8f88f8fff8014fffffffffffffffffffffffffffcf22eeeee8e8ef8eee8e ,
                        0xee88e87778000008ffff8ffefef888ffffff0144ffffffffffff3333ffffffff ,
                        0xfffffff20e888eeeeeeeeee8eeee00000000000fffff888ff8fffffffff400ff ,
                        0xffffffffffffddddffffffffffffffc828eeee88e8eee8ee88ee0f0fb0770e0e ,
                        0xeffff8f8f8fffe8f8f7f04ffffffffffffffeeeefffffffffffffffccc8eeeef ,
                        0xeeee88feee8e0e7b90bb0e7efefefff8efffff8ff4f9ffffffffffffffffffff ,
                        0xfffffffffffffffff000eeee88e8eefeee8eeeff00b70fefefeff8f8ffff8fff ,
                        0x8970ffffffffffffffff3333fffffffffffffffffcc02efee8fe8eeeeeeeee00 ,
                        0x00000eeffeeffff8ff8888f04cffffffffffffffffffddddffffffffffffffff ,
                        0xffca88ee8eee8eeeee8fe78f88000eefefffff8fff8fff8f9fffffffffffffff ,
                        0xffffeeeeffffffffffffffffffff82a88eeeeee88ee800000000008ffeeeeeef ,
                        0xfe888880ffffffffffffffffffffffffffffffffffffffffffff0e08eeee8efe ,
                        0x8e8ee7ff0f000f8ee8fffffffff8004fffffffffffffffffffff3333ffffffff ,
                        0xfffffffffffffc08eee8ee8eeeeeee0ff00008ee8e8feefffff000ffffffffff ,
                        0xffffffffffffddddfffffffffffffffffffffff880feeee8f8f88ee77000ef8e ,
                        0x8eeffffffff7ffffffffffffffffffffffffeeeefffffffffffffffffffffffc ,
                        0x00e8eeeeef8fe88ef0ee88eee8fffffeff07ffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffff0408eefef888ef8f008fee8eeeffffff00ffffff ,
                        0xffffffffffffffffffff3333ffffffffffffffffffffffffff48cefeeeee8ee8 ,
                        0xe0effeee8efffffff0ffffffffffffffffffffffffffddddffffffffffffffff ,
                        0xffffffffff0088eeffe8fe8ee08ef888f8fffff007ffffffffffffffffffffff ,
                        0xffffeeeefffffffffffffffffffffffffffc088eeee8eff8feeefe8f8effefc0 ,
                        0xcfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcf00 ,
                        0x88ee8e88eefffe8e8efff0c4ffffffffffffffffffffffffffff3333ffffffff ,
                        0xfffffffffffffffffffff00f8f8eee8e8eeef8ffffefc84fffffffffffffffff ,
                        0xffffffffffffddddffffffffffffffffffffffffffffffc0088e8e8ee88fe8ff ,
                        0xf8e08cffffffffffffffffffffffffffffffeeeeffffffffffffffffffffffff ,
                        0xfffffffc404eefe8efe8ef88ee8c4fffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffc04cfefef8e8fe88800cffffffffffff ,
                        0xffffffffffffffffffff3333fffffffffffffffffffffffffffffffff0c48ee8 ,
                        0xee8e8f88ff4fffffffffffffffffffffffffffffffffddddffffffffffffffff ,
                        0xffffffffffffffffff48c88eeeeee8e48cffffffffffffffffffffffffffffff ,
                        0xffffeeeefffffffffffffffffffffffffffffffffff44cee8fee8844cfffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffff4ccc8fe8848cffffffffffffffffffffffffffffffffffff3333ffffffff ,
                        0xfffffffffffffffffffffffffffff4c04ef0044fffffffffffffffffffffffff ,
                        0xffffffffffffddddffffffffffffffffffffffffffffffffffffff4c0e4cc4ff ,
                        0xffffffffffffffffffffffffffffffffffffeeeeffffffffffffffffffffffff ,
                        0xfffffffffffffffcccc0cfffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffccccffffffffffffffffffff ,
                        0xffffffffffffffffffff3333ffffffffffffffffffffffffffffffffffffffff ,
                        0xf44fffffffffffffffffffffffffffffffffffffffffdddd
                    End
                    ObjectPalette = Begin
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff00000000ff0000ffff00000000ff00ff00ff0000ffff00 ,
                        0xffffff0000000000
                    End
                End
            End
        End
        Begin BreakHeader
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =3435
            Name ="EntêteGroupe2"
            Begin
                Begin Rectangle
                    Top =1987
                    Width =9345
                    Height =332
                    BackColor =8388608
                    BorderColor =8388608
                    Name ="RectangleFond1"
                End
                Begin Rectangle
                    Top =3045
                    Width =9345
                    Height =332
                    BackColor =8388608
                    BorderColor =8388608
                    Name ="RectangleFond3"
                End
                Begin TextBox
                    Left =960
                    Top =270
                    Width =3168
                    Height =255
                    ColumnWidth =2310
                    Name ="Destinataire"
                    ControlSource ="Destinataire"
                    StatusBarText ="Name of person or company to receive the shipment."
                End
                Begin TextBox
                    CanGrow = NotDefault
                    Left =960
                    Top =555
                    Width =3168
                    Height =255
                    ColumnWidth =1995
                    TabIndex =1
                    Name ="Adresse livraison"
                    ControlSource ="Adresse livraison"
                    StatusBarText ="Street address only -- no post-office box allowed."
                    EventProcPrefix ="Adresse_livraison"
                End
                Begin TextBox
                    Left =960
                    Top =1155
                    Width =3168
                    Height =255
                    ColumnWidth =1185
                    TabIndex =2
                    Name ="Pays livraison"
                    ControlSource ="Pays livraison"
                    EventProcPrefix ="Pays_livraison"
                End
                Begin Label
                    Left =15
                    Top =210
                    Width =855
                    Height =285
                    FontSize =12
                    FontWeight =400
                    ForeColor =8388608
                    Name ="ÉtiquetteEnvoyéÀ"
                    Caption ="Envoyé à:"
                End
                Begin Label
                    Left =4755
                    Top =210
                    Width =855
                    Height =285
                    FontSize =12
                    FontWeight =400
                    ForeColor =8388608
                    Name ="ÉtiquetteFacturéÀ"
                    Caption ="Facturé à:"
                End
                Begin TextBox
                    Left =5760
                    Top =255
                    Width =3168
                    Height =255
                    ColumnWidth =2610
                    TabIndex =3
                    Name ="Société"
                    ControlSource ="Clients.Société"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    Left =5760
                    Top =540
                    Width =3168
                    Height =255
                    ColumnWidth =2325
                    TabIndex =4
                    Name ="Adresse"
                    ControlSource ="Adresse"
                    StatusBarText ="Street or post-office box."
                End
                Begin TextBox
                    Left =5760
                    Top =1140
                    Width =3168
                    Height =255
                    ColumnWidth =900
                    TabIndex =5
                    Name ="Pays"
                    ControlSource ="Pays"
                End
                Begin TextBox
                    TextAlign =2
                    Left =885
                    Top =2355
                    Width =1320
                    Height =255
                    TabIndex =6
                    Name ="Code client"
                    ControlSource ="Code client"
                    StatusBarText ="Unique five-character code based on customer name."
                    InputMask =">LLLLL"
                    EventProcPrefix ="Code_client"
                    Begin
                        Begin Label
                            TextAlign =2
                            Left =1055
                            Top =2010
                            Width =1020
                            Height =285
                            FontSize =12
                            FontWeight =400
                            ForeColor =16777215
                            Name ="ÉtiquetteCodeClient"
                            Caption ="Code client:"
                        End
                    End
                End
                Begin TextBox
                    TextAlign =2
                    Top =2355
                    Width =855
                    Height =255
                    TabIndex =7
                    Name ="N° commande"
                    ControlSource ="N° commande"
                    StatusBarText ="Unique order number."
                    EventProcPrefix ="N°_commande"
                    Begin
                        Begin Label
                            TextAlign =2
                            Left =52
                            Top =2010
                            Width =750
                            Height =285
                            FontSize =12
                            FontWeight =400
                            ForeColor =16777215
                            Name ="ÉtiquetteN°Commande"
                            Caption ="N° com.:"
                        End
                    End
                End
                Begin TextBox
                    TextAlign =2
                    Left =3960
                    Top =2355
                    Width =1170
                    Height =255
                    TabIndex =8
                    Name ="Date commande"
                    ControlSource ="Date commande"
                    Format ="Medium Date"
                    EventProcPrefix ="Date_commande"
                    Begin
                        Begin Label
                            TextAlign =2
                            Left =4088
                            Top =2010
                            Width =915
                            Height =285
                            FontSize =12
                            FontWeight =400
                            ForeColor =16777215
                            Name ="ÉtiquetteDateCommande"
                            Caption ="Date com.:"
                        End
                    End
                End
                Begin TextBox
                    TextAlign =2
                    Left =5235
                    Top =2355
                    Width =1170
                    Height =255
                    TabIndex =9
                    Name ="À livrer avant"
                    ControlSource ="À livrer avant"
                    Format ="Medium Date"
                    EventProcPrefix ="À_livrer_avant"
                    Begin
                        Begin Label
                            TextAlign =2
                            Left =5288
                            Top =2010
                            Width =1065
                            Height =285
                            FontSize =12
                            FontWeight =400
                            ForeColor =16777215
                            Name ="ÉtiquetteLivrerAvant"
                            Caption ="Livrer avant:"
                        End
                    End
                End
                Begin TextBox
                    TextAlign =2
                    Left =6585
                    Top =2355
                    Width =1170
                    Height =255
                    TabIndex =10
                    Name ="Date envoi"
                    ControlSource ="Date envoi"
                    Format ="Medium Date"
                    EventProcPrefix ="Date_envoi"
                    Begin
                        Begin Label
                            TextAlign =2
                            Left =6623
                            Top =2010
                            Width =1095
                            Height =285
                            FontSize =12
                            FontWeight =400
                            ForeColor =16777215
                            Name ="ÉtiquetteDateEnvoi"
                            Caption ="Date d'envoi:"
                        End
                    End
                End
                Begin TextBox
                    TextAlign =2
                    Left =2230
                    Top =2355
                    Width =1695
                    Height =255
                    TabIndex =11
                    Name ="Vendeur"
                    ControlSource ="Vendeur"
                    Begin
                        Begin Label
                            TextAlign =2
                            Left =2485
                            Top =2010
                            Width =1185
                            Height =285
                            FontSize =12
                            FontWeight =400
                            ForeColor =16777215
                            Name ="ÉtiquetteReprésentant"
                            Caption ="Représentant:"
                        End
                    End
                End
                Begin TextBox
                    TextAlign =2
                    Left =7920
                    Top =2355
                    Width =1425
                    Height =255
                    TabIndex =12
                    Name ="Nom du messager"
                    ControlSource ="Nom du messager"
                    EventProcPrefix ="Nom_du_messager"
                    Begin
                        Begin Label
                            TextAlign =2
                            Left =8190
                            Top =2010
                            Width =885
                            Height =285
                            FontSize =12
                            FontWeight =400
                            ForeColor =16777215
                            Name ="ÉtiquetteMessager"
                            Caption ="Messager:"
                        End
                    End
                End
                Begin Label
                    TextAlign =2
                    Left =23
                    Top =3060
                    Width =1005
                    Height =285
                    FontSize =12
                    FontWeight =400
                    ForeColor =16777215
                    Name ="ÉtiquetteRéfProduit"
                    Caption ="Réf produit:"
                End
                Begin Label
                    Left =1095
                    Top =3060
                    Width =1350
                    Height =285
                    FontSize =12
                    FontWeight =400
                    ForeColor =16777215
                    Name ="ÉtiquetteNomProduit"
                    Caption ="Nom du produit:"
                End
                Begin Label
                    Left =5355
                    Top =3060
                    Width =1080
                    Height =285
                    FontSize =12
                    FontWeight =400
                    ForeColor =16777215
                    Name ="ÉtiquettePrixUnitaire"
                    Caption ="Prix unitaire:"
                End
                Begin Label
                    Left =4425
                    Top =3060
                    Width =405
                    Height =285
                    FontSize =12
                    FontWeight =400
                    ForeColor =16777215
                    Name ="ÉtiquetteQuantité"
                    Caption ="Qté:"
                End
                Begin Label
                    Left =6660
                    Top =3060
                    Width =1020
                    Height =285
                    FontSize =12
                    FontWeight =400
                    ForeColor =16777215
                    Name ="ÉtiquetteRemise"
                    Caption ="Remise (%):"
                End
                Begin Label
                    TextAlign =3
                    Left =8595
                    Top =3060
                    Width =525
                    Height =285
                    FontSize =12
                    FontWeight =400
                    ForeColor =16777215
                    Name ="ÉtiquetteTotal"
                    Caption ="Total:"
                End
                Begin Rectangle
                    BackStyle =0
                    Top =1995
                    Width =9345
                    Height =660
                    BorderColor =8388608
                    Name ="RectangleFond2"
                End
                Begin Line
                    Left =855
                    Top =2010
                    Width =0
                    Height =660
                    BorderColor =8388608
                    Name ="Ligne49"
                End
                Begin Line
                    Left =2205
                    Top =1995
                    Width =0
                    Height =660
                    BorderColor =8388608
                    Name ="Ligne50"
                End
                Begin Line
                    Left =3930
                    Top =2010
                    Width =0
                    Height =660
                    BorderColor =8388608
                    Name ="Ligne51"
                End
                Begin Line
                    Left =5130
                    Top =1995
                    Width =0
                    Height =660
                    BorderColor =8388608
                    Name ="Ligne52"
                End
                Begin Line
                    Left =6480
                    Top =1995
                    Width =0
                    Height =660
                    BorderColor =8388608
                    Name ="Ligne54"
                End
                Begin Line
                    Left =7830
                    Top =1995
                    Width =0
                    Height =660
                    BorderColor =8388608
                    Name ="Ligne55"
                End
                Begin TextBox
                    Left =960
                    Top =855
                    Width =3168
                    Height =255
                    TabIndex =13
                    Name ="VilleRégionPostalEnvoi"
                    ControlSource ="=IIf([Région] Is Null,[Ville livraison] & \" \" & [Code postal livraison],[Ville"
                        " livraison] & \" \" & [Région livraison] & \" \" & [Code postal livraison])"
                End
                Begin TextBox
                    Left =5760
                    Top =840
                    Width =3168
                    Height =255
                    TabIndex =14
                    Name ="VilleRégionCodePostal"
                    ControlSource ="=IIf([Région] Is Null,[Ville] & \" \" & [Code postal],[Ville] & \" \" & [Région]"
                        " & \" \" & [Code postal])"
                End
            End
        End
        Begin Section
            KeepTogether = NotDefault
            Height =390
            Name ="Détail"
            Begin
                Begin TextBox
                    Left =1080
                    Width =2955
                    Height =255
                    Name ="Nom du produit"
                    ControlSource ="Nom du produit"
                    EventProcPrefix ="Nom_du_produit"
                End
                Begin TextBox
                    TextAlign =3
                    Left =5340
                    Width =1020
                    Height =255
                    ColumnWidth =945
                    TabIndex =1
                    Name ="Prix unitaire"
                    ControlSource ="Prix unitaire"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                    EventProcPrefix ="Prix_unitaire"
                End
                Begin TextBox
                    TextAlign =3
                    Left =4170
                    Width =1020
                    Height =255
                    ColumnWidth =810
                    TabIndex =2
                    Name ="Quantité"
                    ControlSource ="Quantité"
                    Format ="General Number"
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =3
                    Left =6480
                    Width =1020
                    Height =255
                    ColumnWidth =855
                    TabIndex =3
                    Name ="Remise (%)"
                    ControlSource ="Remise (%)"
                    Format ="Percent"
                    EventProcPrefix ="Remise____"
                End
                Begin TextBox
                    TextAlign =3
                    Left =7635
                    Width =1485
                    Height =255
                    TabIndex =4
                    Name ="PrixTotal"
                    ControlSource ="PrixTotal"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                End
                Begin TextBox
                    Width =720
                    Height =255
                    ColumnWidth =2805
                    TabIndex =5
                    Name ="Réf produit"
                    ControlSource ="Réf produit"
                    StatusBarText ="Same as Product ID in Products table."
                    EventProcPrefix ="Réf_produit"
                End
                Begin Line
                    Top =315
                    Width =9360
                    BorderColor =8388608
                    Name ="Ligne47"
                End
            End
        End
        Begin BreakFooter
            KeepTogether = NotDefault
            ForceNewPage =2
            Height =1455
            Name ="PiedGroupe3"
            Begin
                Begin TextBox
                    TextAlign =3
                    Left =7680
                    Top =240
                    Height =255
                    Name ="SousTotalFacture"
                    ControlSource ="=Sum([PrixTotal])"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =6675
                            Top =240
                            Width =930
                            Height =285
                            FontSize =12
                            FontWeight =400
                            ForeColor =8388608
                            Name ="ÉtiquetteSousTotal"
                            Caption ="Sous-total:"
                        End
                    End
                End
                Begin TextBox
                    TextAlign =3
                    Left =7680
                    Top =600
                    Height =255
                    ColumnWidth =810
                    TabIndex =1
                    Name ="Port"
                    ControlSource ="Port"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =7155
                            Top =600
                            Width =450
                            Height =285
                            FontSize =12
                            FontWeight =400
                            ForeColor =8388608
                            Name ="ÉtiquettePort"
                            Caption ="Port:"
                        End
                    End
                End
                Begin TextBox
                    TextAlign =3
                    Left =7680
                    Top =960
                    Height =255
                    TabIndex =2
                    Name ="TotalFacture"
                    ControlSource ="=[SousTotalFacture]+[Port]"
                    Format ="#,##0.00\" F\";-#,##0.00\" F\""
                    Begin
                        Begin Label
                            TextAlign =3
                            Left =7080
                            Top =960
                            Width =525
                            Height =285
                            FontSize =12
                            FontWeight =400
                            ForeColor =8388608
                            Name ="ÉtiquetteTotalFacture"
                            Caption ="Total:"
                        End
                    End
                End
                Begin Line
                    Left =6645
                    Top =540
                    Width =2722
                    BorderColor =8388608
                    Name ="Ligne41"
                End
                Begin Line
                    Left =6645
                    Top =900
                    Width =2722
                    BorderColor =8388608
                    Name ="Ligne42"
                End
                Begin Line
                    Left =6645
                    Top =1260
                    Width =2722
                    BorderColor =8388608
                    Name ="Ligne43"
                End
            End
        End
        Begin PageFooter
            Height =0
            Name ="PiedPage"
        End
    End
End
