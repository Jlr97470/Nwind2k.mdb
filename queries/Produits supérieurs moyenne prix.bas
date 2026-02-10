Operation =1
Option =8
Where ="(((Produits.[Prix unitaire])>(SELECT AVG([Prix unitaire]) From Produits)))"
Begin InputTables
    Name ="Produits"
End
Begin OutputColumns
    Expression ="Produits.[Nom du produit]"
    Expression ="Produits.[Prix unitaire]"
End
Begin OrderBy
    Expression ="Produits.[Prix unitaire]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderOn" ="0"
dbText "Description" ="(Sous-requête) Renvoie les produits qui ont un prix unitaire supérieur à la moye"
    "nne."
dbLong "DatasheetGridlinesColor" ="8421504"
dbLong "DatasheetBackColor" ="12632256"
dbByte "DatasheetCellsEffect" ="1"
dbBoolean "OrderByOn" ="0"
Begin
    Begin
        dbText "Name" ="Produits.[Prix unitaire]"
        dbInteger "ColumnWidth" ="1335"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Produits.[Nom du produit]"
        dbInteger "ColumnWidth" ="2985"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =104
    Top =12
    Right =565
    Bottom =329
    Left =-1
    Top =-1
    Right =450
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =21
        Top =8
        Right =134
        Bottom =115
        Top =0
        Name ="Produits"
        Name =""
    End
End
