Operation =1
Option =8
Where ="(((Commandes.[Date envoi]) Is Not Null))"
Begin InputTables
    Name ="Commandes"
    Name ="Sous-totaux commandes"
End
Begin OutputColumns
    Expression ="Commandes.[Date envoi]"
    Expression ="Commandes.[N° commande]"
    Expression ="[Sous-totaux commandes].SousTotal"
End
Begin Joins
    LeftTable ="Commandes"
    RightTable ="Sous-totaux commandes"
    Expression ="Commandes.[N° commande] = [Sous-totaux commandes].[N° commande]"
    Flag =1
End
Begin OrderBy
    Expression ="Commandes.[Date envoi]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbBoolean "OrderByOn" ="0"
dbText "Description" ="Requête sous-jacente de l'état Récapitulatif des ventes par année."
dbByte "RecordsetType" ="0"
Begin
End
Begin
    State =0
    Left =80
    Top =23
    Right =551
    Bottom =328
    Left =-1
    Top =-1
    Right =464
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =26
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="Commandes"
        Name =""
    End
    Begin
        Left =178
        Top =6
        Right =274
        Bottom =83
        Top =0
        Name ="Sous-totaux commandes"
        Name =""
    End
End
