Operation =1
Option =24
RowCount ="10"
Begin InputTables
    Name ="Produits"
End
Begin OutputColumns
    Alias ="LesDixProduitsLesPlusChers"
    Expression ="Produits.[Nom du produit]"
    Expression ="Produits.[Prix unitaire]"
End
Begin OrderBy
    Expression ="Produits.[Prix unitaire]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbText "Description" ="Requêtes premières valeurs. Retourne les 10 produits les plus chers. Spécifie le"
    " nombre de valeurs les plus élevées à renvoyer en utilisant la zone Premières va"
    "leurs de la barre d'outils."
dbBoolean "FilterOn" ="0"
dbBoolean "OrderOn" ="0"
dbBoolean "OrderByOn" ="0"
dbLong "DatasheetGridlinesColor" ="8421504"
dbLong "DatasheetBackColor" ="12632256"
dbByte "DatasheetCellsEffect" ="1"
dbByte "RecordsetType" ="0"
Begin
    Begin
        dbText "Name" ="LesDixProduitsLesPlusChers"
        dbInteger "ColumnWidth" ="3015"
        dbBoolean "ColumnHidden" ="0"
        dbMemo "Caption" ="Les dix produits les plus chers"
    End
    Begin
        dbText "Name" ="Produits.[Prix unitaire]"
        dbInteger "ColumnWidth" ="1335"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =39
    Top =24
    Right =486
    Bottom =329
    Left =-1
    Top =-1
    Right =567
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =77
        Top =5
        Right =199
        Bottom =112
        Top =0
        Name ="Produits"
        Name =""
    End
End
