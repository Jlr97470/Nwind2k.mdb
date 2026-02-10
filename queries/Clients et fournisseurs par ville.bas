dbMemo "SQL" ="SELECT Clients.Ville, Clients.Société, Clients.Contact, \"Clients\" AS Relation "
    "\015\012FROM Clients\015\012UNION SELECT Fournisseurs.Ville, Fournisseurs.Sociét"
    "é, Fournisseurs.Contact, \"Fournisseurs\"\015\012FROM Fournisseurs\015\012ORDER "
    "BY Ville, Société;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbText "Description" ="(Union) Retourne une liste de fournisseurs et de clients dans chaque ville."
dbBoolean "OrderOn" ="0"
dbLong "DatasheetGridlinesColor" ="8421504"
dbLong "DatasheetBackColor" ="12632256"
dbByte "DatasheetCellsEffect" ="1"
Begin
    Begin
        dbText "Name" ="Clients.Ville"
        dbInteger "ColumnWidth" ="1410"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Clients.Société"
        dbInteger "ColumnWidth" ="3735"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Clients.Contact"
        dbInteger "ColumnWidth" ="1725"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Relation"
        dbInteger "ColumnWidth" ="1275"
        dbBoolean "ColumnHidden" ="0"
    End
End
