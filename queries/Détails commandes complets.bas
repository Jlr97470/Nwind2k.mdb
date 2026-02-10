Operation =1
Option =8
Begin InputTables
    Name ="Détails commandes"
    Name ="Produits"
End
Begin OutputColumns
    Expression ="[Détails commandes].[N° commande]"
    Expression ="[Détails commandes].[Réf produit]"
    Expression ="Produits.[Nom du produit]"
    Expression ="[Détails commandes].[Prix unitaire]"
    Expression ="[Détails commandes].Quantité"
    Expression ="[Détails commandes].[Remise (%)]"
    Alias ="PrixTotal"
    Expression ="CCur([Détails commandes].[Prix unitaire]*[Quantité]*(1-[Remise (%)])/100)*100"
End
Begin Joins
    LeftTable ="Produits"
    RightTable ="Détails commandes"
    Expression ="Produits.[Réf produit] = [Détails commandes].[Réf produit]"
    Flag =1
End
Begin OrderBy
    Expression ="[Détails commandes].[N° commande]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "FilterOn" ="0"
dbText "Description" ="Source pour plusieurs formulaires et états. Utilise la fonction CMonnaie pour ca"
    "lculer le prix total pour chaque élément commandé."
dbBoolean "OrderOn" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "RecordsetType" ="0"
Begin
    Begin
        dbText "Name" ="[Détails commandes].[Prix unitaire]"
        dbText "Format" ="#,##0.00\" F\";-#,##0.00\" F\""
    End
    Begin
        dbText "Name" ="[Détails commandes].[Réf produit]"
        dbInteger "ColumnWidth" ="3450"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Produits.[Nom du produit]"
        dbInteger "ColumnWidth" ="3210"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="PrixTotal"
        dbInteger "ColumnWidth" ="1545"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Prix total"
    End
End
Begin
    State =0
    Left =40
    Top =22
    Right =618
    Bottom =327
    Left =-1
    Top =-1
    Right =571
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =46
        Top =7
        Right =157
        Bottom =114
        Top =0
        Name ="Détails commandes"
        Name =""
    End
    Begin
        Left =187
        Top =7
        Right =305
        Bottom =114
        Top =0
        Name ="Produits"
        Name =""
    End
End
