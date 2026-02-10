Operation =1
Option =8
Where ="(((Produits.Indisponible)<>Yes))"
Begin InputTables
    Name ="Catégories"
    Name ="Produits"
End
Begin OutputColumns
    Expression ="Catégories.[Nom de catégorie]"
    Expression ="Produits.[Nom du produit]"
    Expression ="Produits.[Quantité par unité]"
    Expression ="Produits.[Unités en stock]"
    Expression ="Produits.Indisponible"
End
Begin Joins
    LeftTable ="Catégories"
    RightTable ="Produits"
    Expression ="Catégories.[Code catégorie] = Produits.[Code catégorie]"
    Flag =1
End
Begin OrderBy
    Expression ="Catégories.[Nom de catégorie]"
    Flag =0
    Expression ="Produits.[Nom du produit]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbBoolean "OrderByOn" ="0"
dbText "Description" ="Requête sous-jacente de l'état Produits par catégorie."
dbByte "RecordsetType" ="0"
Begin
End
Begin
    State =0
    Left =82
    Top =22
    Right =569
    Bottom =327
    Left =-1
    Top =-1
    Right =480
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =35
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="Catégories"
        Name =""
    End
    Begin
        Left =164
        Top =8
        Right =269
        Bottom =115
        Top =0
        Name ="Produits"
        Name =""
    End
End
