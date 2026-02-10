Operation =1
Option =8
Where ="(((Commandes.[Date commande]) Between #1/1/95# And #12/31/95#))"
Begin InputTables
    Name ="Catégories"
    Name ="Produits"
    Name ="Commandes"
    Name ="Détails commandes complets"
End
Begin OutputColumns
    Expression ="Catégories.[Code catégorie]"
    Expression ="Catégories.[Nom de catégorie]"
    Expression ="Produits.[Nom du produit]"
    Alias ="VentesProduit"
    Expression ="Sum([Détails commandes complets].PrixTotal)"
End
Begin Joins
    LeftTable ="Commandes"
    RightTable ="Détails commandes complets"
    Expression ="Commandes.[N° commande] = [Détails commandes complets].[N° commande]"
    Flag =1
    LeftTable ="Produits"
    RightTable ="Détails commandes complets"
    Expression ="Produits.[Réf produit] = [Détails commandes complets].[Réf produit]"
    Flag =1
    LeftTable ="Catégories"
    RightTable ="Produits"
    Expression ="Catégories.[Code catégorie] = Produits.[Code catégorie]"
    Flag =1
End
Begin OrderBy
    Expression ="Produits.[Nom du produit]"
    Flag =0
End
Begin Groups
    Expression ="Catégories.[Code catégorie]"
    GroupLevel =0
    Expression ="Catégories.[Nom de catégorie]"
    GroupLevel =0
    Expression ="Produits.[Nom du produit]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderOn" ="0"
dbText "Description" ="Source d'enregistrements pour l'état Ventes par catégorie."
dbBoolean "OrderByOn" ="0"
dbByte "RecordsetType" ="0"
Begin
    Begin
        dbText "Name" ="Produits.[Nom du produit]"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VentesProduit"
        dbInteger "ColumnWidth" ="1665"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =22
    Right =618
    Bottom =331
    Left =-1
    Top =-1
    Right =567
    Bottom =148
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =16
        Top =9
        Right =123
        Bottom =116
        Top =0
        Name ="Catégories"
        Name =""
    End
    Begin
        Left =153
        Top =10
        Right =261
        Bottom =117
        Top =0
        Name ="Produits"
        Name =""
    End
    Begin
        Left =428
        Top =10
        Right =532
        Bottom =102
        Top =0
        Name ="Commandes"
        Name =""
    End
    Begin
        Left =291
        Top =10
        Right =402
        Bottom =102
        Top =0
        Name ="Détails commandes complets"
        Name =""
    End
End
