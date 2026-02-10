Operation =1
Option =8
Begin InputTables
    Name ="Ventes pour 1995"
End
Begin OutputColumns
    Expression ="[Ventes pour 1995].[Nom de catégorie]"
    Alias ="SommeDesVentes"
    Expression ="Sum([Ventes pour 1995].VentesProduit)"
End
Begin Groups
    Expression ="[Ventes pour 1995].[Nom de catégorie]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "FilterOn" ="0"
dbText "Description" ="Totaux des ventes par catégorie de produit basée sur des valeurs renvoyées par l"
    "a requête Ventes pour 1995."
dbBoolean "OrderOn" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "RecordsetType" ="0"
Begin
    Begin
        dbText "Name" ="SommeDesVentes"
        dbInteger "ColumnWidth" ="2190"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00\" F\";-#,##0.00\" F\""
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
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =162
        Bottom =98
        Top =0
        Name ="Ventes pour 1995"
        Name =""
    End
End
