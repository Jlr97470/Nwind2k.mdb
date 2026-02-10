Operation =1
Option =8
Begin InputTables
    Name ="Clients"
    Name ="Commandes"
End
Begin OutputColumns
    Expression ="Commandes.[N° commande]"
    Expression ="Commandes.[Code client]"
    Expression ="Commandes.[N° employé]"
    Expression ="Commandes.[Date commande]"
    Expression ="Commandes.[À livrer avant]"
    Expression ="Commandes.[Date envoi]"
    Expression ="Commandes.[N° messager]"
    Expression ="Commandes.Port"
    Expression ="Commandes.Destinataire"
    Expression ="Commandes.[Adresse livraison]"
    Expression ="Commandes.[Ville livraison]"
    Expression ="Commandes.[Région livraison]"
    Expression ="Commandes.[Code postal livraison]"
    Expression ="Commandes.[Pays livraison]"
    Expression ="Clients.Société"
    Expression ="Clients.Adresse"
    Expression ="Clients.Ville"
    Expression ="Clients.Région"
    Expression ="Clients.[Code postal]"
    Expression ="Clients.Pays"
End
Begin Joins
    LeftTable ="Clients"
    RightTable ="Commandes"
    Expression ="Clients.[Code client] = Commandes.[Code client]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbBoolean "OrderByOn" ="0"
dbText "Description" ="Requête sous-jacente du formulaire Commandes."
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
    Right =571
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
        Top =8
        Right =275
        Bottom =115
        Top =0
        Name ="Commandes"
        Name =""
    End
End
