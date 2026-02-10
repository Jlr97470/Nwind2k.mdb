Operation =1
Option =8
Where ="(((Commandes.[Date commande]) Between #1/1/95# And #12/31/95#))"
Begin InputTables
    Name ="Clients"
    Name ="Commandes"
End
Begin OutputColumns
    Expression ="Clients.[Code client]"
    Expression ="Clients.Société"
    Expression ="Clients.Ville"
    Expression ="Clients.Pays"
End
Begin Joins
    LeftTable ="Clients"
    RightTable ="Commandes"
    Expression ="Clients.[Code client] = Commandes.[Code client]"
    Flag =3
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbText "Description" ="Source d'enregistrements pour le formulaire Commandes trimestrielles. Liste seul"
    "ement les clients qui ont commandé en 1995."
dbBoolean "OrderByOn" ="0"
dbByte "RecordsetType" ="0"
Begin
End
Begin
    State =0
    Left =48
    Top =32
    Right =579
    Bottom =334
    Left =-1
    Top =-1
    Right =547
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="Clients"
        Name =""
    End
    Begin
        Left =164
        Top =6
        Right =278
        Bottom =113
        Top =0
        Name ="Commandes"
        Name =""
    End
End
