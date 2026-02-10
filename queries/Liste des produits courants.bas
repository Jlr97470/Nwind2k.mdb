Operation =1
Option =0
Where ="((([Liste des produits].Indisponible)=No))"
Begin InputTables
    Name ="Produits"
    Alias ="Liste des produits"
End
Begin OutputColumns
    Expression ="[Liste des produits].[Réf produit]"
    Expression ="[Liste des produits].[Nom du produit]"
End
Begin OrderBy
    Expression ="[Liste des produits].[Nom du produit]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "FilterOn" ="0"
dbText "Description" ="Filtre les enregistrements dans la table Produits; renvoit seulement les produit"
    "s disponibles."
dbBoolean "OrderOn" ="0"
dbByte "DatasheetGridlinesBehavior" ="3"
dbBoolean "OrderByOn" ="0"
dbByte "RecordsetType" ="0"
Begin
    Begin
        dbText "Name" ="[Liste des produits].[Nom du produit]"
        dbInteger "ColumnWidth" ="3210"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =93
    Top =10
    Right =556
    Bottom =329
    Left =-1
    Top =-1
    Right =456
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =152
        Bottom =113
        Top =0
        Name ="Liste des produits"
        Name =""
    End
End
