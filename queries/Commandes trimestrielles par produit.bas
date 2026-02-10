Operation =6
Option =0
Where ="(((Commandes.[Date commande]) Between #1/1/95# And #12/31/95#))"
Begin InputTables
    Name ="Produits"
    Name ="Commandes"
    Name ="Détails commandes"
End
Begin OutputColumns
    Expression ="Produits.[Nom du produit]"
    GroupLevel =2
    Expression ="Commandes.[Code client]"
    GroupLevel =2
    Alias ="AnnéeCommande"
    Expression ="Year([Date commande])"
    GroupLevel =2
    Alias ="Expr1"
    Expression ="\"Trim \" & DatePart(\"q\",[Date commande],1) In (\"Trim 1\",\"Trim 2\",\"Trim 3"
        "\",\"Trim 4\")"
    GroupLevel =1
    Alias ="MontantProduit"
    Expression ="Sum(CCur([Détails commandes].[Prix unitaire]*[Quantité]*(1-[Remise (%)])/100)*10"
        "0)"
End
Begin Joins
    LeftTable ="Commandes"
    RightTable ="Détails commandes"
    Expression ="Commandes.[N° commande] = [Détails commandes].[N° commande]"
    Flag =1
    LeftTable ="Produits"
    RightTable ="Détails commandes"
    Expression ="Produits.[Réf produit] = [Détails commandes].[Réf produit]"
    Flag =1
End
Begin Groups
    Expression ="Produits.[Nom du produit]"
    GroupLevel =2
    Expression ="Commandes.[Code client]"
    GroupLevel =2
    Expression ="Year([Date commande])"
    GroupLevel =2
    Expression ="\"Trim \" & DatePart(\"q\",[Date commande],1)"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbText "Description" ="(Analyse croisée) Source d'enregistrements pour le sous-formulaire Commandes par"
    " trimestre."
dbBoolean "OrderOn" ="0"
dbBoolean "OrderByOn" ="0"
dbLong "DatasheetGridlinesColor" ="8421504"
dbLong "DatasheetBackColor" ="12632256"
dbByte "DatasheetCellsEffect" ="1"
dbByte "RecordsetType" ="0"
Begin
    Begin
        dbText "Name" ="Produits.[Nom du produit]"
        dbInteger "ColumnWidth" ="3210"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Commandes.[Code client]"
        dbInteger "ColumnWidth" ="3510"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Trim 1"
        dbInteger "ColumnWidth" ="1185"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Trim 2"
        dbInteger "ColumnWidth" ="1215"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Trim 3"
        dbInteger "ColumnWidth" ="1230"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Trim 4"
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="AnnéeCommande"
        dbInteger "ColumnWidth" ="1860"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =57
    Top =20
    Right =558
    Bottom =340
    Left =-1
    Top =-1
    Right =494
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =298
        Top =7
        Right =414
        Bottom =114
        Top =0
        Name ="Produits"
        Name =""
    End
    Begin
        Left =24
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="Commandes"
        Name =""
    End
    Begin
        Left =169
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="Détails commandes"
        Name =""
    End
End
