Operation =1
Option =8
Where ="(((Produits.Indisponible)=No))"
Begin InputTables
    Name ="Catégories"
    Name ="Produits"
End
Begin OutputColumns
    Expression ="Catégories.[Nom de catégorie]"
    Expression ="Catégories.Description"
    Expression ="Catégories.Illustration"
    Expression ="Produits.[Réf produit]"
    Expression ="Produits.[Nom du produit]"
    Expression ="Produits.[Quantité par unité]"
    Expression ="Produits.[Prix unitaire]"
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
dbText "Description" ="Requête sous-jacente de l'état Catalogue."
dbByte "RecordsetType" ="0"
Begin
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =640
    Bottom =365
    Left =-1
    Top =-1
    Right =637
    Bottom =161
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =33
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="Catégories"
        Name =""
    End
    Begin
        Left =164
        Top =6
        Right =285
        Bottom =128
        Top =0
        Name ="Produits"
        Name =""
    End
End
