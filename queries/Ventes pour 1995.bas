Operation =1
Option =8
Where ="(((Commandes.[Date envoi]) Between #1/1/95# And #12/31/95#))"
Begin InputTables
    Name ="Catégories"
    Name ="Produits"
    Name ="Commandes"
    Name ="Détails commandes"
End
Begin OutputColumns
    Expression ="Catégories.[Nom de catégorie]"
    Expression ="Produits.[Nom du produit]"
    Alias ="VentesProduit"
    Expression ="Sum(CCur([Détails commandes].[Prix unitaire]*[Quantité]*(1-[Remise (%)])/100)*10"
        "0)"
End
Begin Joins
    LeftTable ="Catégories"
    RightTable ="Produits"
    Expression ="Catégories.[Code catégorie] = Produits.[Code catégorie]"
    Flag =1
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
    Expression ="Catégories.[Nom de catégorie]"
    GroupLevel =0
    Expression ="Produits.[Nom du produit]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "FilterOn" ="0"
dbText "Description" ="Source pour la requête Ventes par catégorie pour 1995 et pour le formulaire Vent"
    "es par produit. Utilise les fonctions Somme et CMonnaie."
dbBoolean "OrderOn" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "RecordsetType" ="0"
Begin
    Begin
        dbText "Name" ="VentesProduit"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="VentesProduit"
        dbText "Format" ="#,##0.00\" F\";-#,##0.00\" F\""
    End
    Begin
        dbText "Name" ="Produits.[Nom du produit]"
        dbInteger "ColumnWidth" ="3210"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =36
    Top =20
    Right =617
    Bottom =344
    Left =-1
    Top =-1
    Right =574
    Bottom =154
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =3
        Top =5
        Right =103
        Bottom =112
        Top =0
        Name ="Catégories"
        Name =""
    End
    Begin
        Left =133
        Top =6
        Right =240
        Bottom =113
        Top =0
        Name ="Produits"
        Name =""
    End
    Begin
        Left =417
        Top =9
        Right =527
        Bottom =116
        Top =0
        Name ="Commandes"
        Name =""
    End
    Begin
        Left =270
        Top =9
        Right =387
        Bottom =116
        Top =0
        Name ="Détails commandes"
        Name =""
    End
End
