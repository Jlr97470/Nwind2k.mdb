Operation =1
Option =8
Where ="((([Sous-totaux commandes].SousTotal)>12500) AND ((Commandes.[Date envoi]) Betwe"
    "en #1/1/95# And #12/31/95#))"
Begin InputTables
    Name ="Clients"
    Name ="Commandes"
    Name ="Sous-totaux commandes"
End
Begin OutputColumns
    Alias ="MontantVente"
    Expression ="[Sous-totaux commandes].SousTotal"
    Expression ="Commandes.[N° commande]"
    Expression ="Clients.Société"
    Expression ="Commandes.[Date envoi]"
End
Begin Joins
    LeftTable ="Commandes"
    RightTable ="Sous-totaux commandes"
    Expression ="Commandes.[N° commande] = [Sous-totaux commandes].[N° commande]"
    Flag =1
    LeftTable ="Clients"
    RightTable ="Commandes"
    Expression ="Clients.[Code client] = Commandes.[Code client]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbBoolean "OrderByOn" ="0"
dbText "Description" ="Requête sous-jacente de l'état Totaux des ventes par montant."
dbByte "RecordsetType" ="0"
Begin
End
Begin
    State =0
    Left =40
    Top =22
    Right =618
    Bottom =327
    Left =-1
    Top =-1
    Right =567
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =129
        Bottom =113
        Top =0
        Name ="Clients"
        Name =""
    End
    Begin
        Left =159
        Top =6
        Right =272
        Bottom =113
        Top =0
        Name ="Commandes"
        Name =""
    End
    Begin
        Left =305
        Top =6
        Right =401
        Bottom =83
        Top =0
        Name ="Sous-totaux commandes"
        Name =""
    End
End
