Operation =1
Option =8
Where ="(((Produits.Indisponible)=No))"
Begin InputTables
    Name ="Catégories"
    Name ="Produits"
End
Begin OutputColumns
    Expression ="Produits.*"
    Expression ="Catégories.[Nom de catégorie]"
End
Begin Joins
    LeftTable ="Catégories"
    RightTable ="Produits"
    Expression ="Catégories.[Code catégorie] = Produits.[Code catégorie]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbBoolean "OrderByOn" ="0"
dbText "Description" ="Requête sous-jacente de l'état Liste alphabétique des produits."
dbByte "RecordsetType" ="0"
Begin
End
Begin
    State =0
    Left =70
    Top =25
    Right =549
    Bottom =330
    Left =-1
    Top =-1
    Right =472
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =34
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
        Right =273
        Bottom =115
        Top =0
        Name ="Produits"
        Name =""
    End
End
