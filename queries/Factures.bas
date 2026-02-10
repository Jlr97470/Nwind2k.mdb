Operation =1
Option =8
Begin InputTables
    Name ="Messagers"
    Name ="Produits"
    Name ="Employés"
    Name ="Clients"
    Name ="Commandes"
    Name ="Détails commandes"
End
Begin OutputColumns
    Expression ="Commandes.Destinataire"
    Expression ="Commandes.[Adresse livraison]"
    Expression ="Commandes.[Ville livraison]"
    Expression ="Commandes.[Région livraison]"
    Expression ="Commandes.[Code postal livraison]"
    Expression ="Commandes.[Pays livraison]"
    Expression ="Commandes.[Code client]"
    Expression ="Clients.Société"
    Expression ="Clients.Adresse"
    Expression ="Clients.Ville"
    Expression ="Clients.Région"
    Expression ="Clients.[Code postal]"
    Expression ="Clients.Pays"
    Alias ="Vendeur"
    Expression ="[Prénom] & \" \" & [Nom]"
    Expression ="Commandes.[N° commande]"
    Expression ="Commandes.[Date commande]"
    Expression ="Commandes.[À livrer avant]"
    Expression ="Commandes.[Date envoi]"
    Expression ="Messagers.[Nom du messager]"
    Expression ="[Détails commandes].[Réf produit]"
    Expression ="Produits.[Nom du produit]"
    Expression ="[Détails commandes].[Prix unitaire]"
    Expression ="[Détails commandes].Quantité"
    Expression ="[Détails commandes].[Remise (%)]"
    Alias ="PrixTotal"
    Expression ="CCur([Détails commandes].[Prix unitaire]*[Quantité]*(1-[Remise (%)])/100)*100"
    Expression ="Commandes.Port"
End
Begin Joins
    LeftTable ="Clients"
    RightTable ="Commandes"
    Expression ="Clients.[Code client] = Commandes.[Code client]"
    Flag =1
    LeftTable ="Commandes"
    RightTable ="Détails commandes"
    Expression ="Commandes.[N° commande] = [Détails commandes].[N° commande]"
    Flag =1
    LeftTable ="Produits"
    RightTable ="Détails commandes"
    Expression ="Produits.[Réf produit] = [Détails commandes].[Réf produit]"
    Flag =1
    LeftTable ="Employés"
    RightTable ="Commandes"
    Expression ="Employés.[N° employé] = Commandes.[N° employé]"
    Flag =1
    LeftTable ="Messagers"
    RightTable ="Commandes"
    Expression ="Messagers.[N° messager] = Commandes.[N° messager]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "FilterOn" ="0"
dbText "Description" ="(Critère) Source pour l'état Facture. Basé sur six tables. Inclut des expression"
    "s qui concatènent le prénom et le nom des employés et qui utilisent la fonction "
    "CMonnaie pour calculer le prix complet."
dbBoolean "OrderOn" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "RecordsetType" ="0"
dbMemo "Filter" ="((([Date commande]) between #20/4/95# and #3/5/95#))"
dbMemo "OrderBy" ="Factures.Destinataire"
Begin
    Begin
        dbText "Name" ="[Détails commandes].[Prix unitaire]"
        dbText "Format" ="#,##0.00\" F\";-#,##0.00\" F\""
    End
    Begin
        dbText "Name" ="Commandes.Port"
        dbText "Format" ="#,##0.00\" F\";-#,##0.00\" F\""
        dbInteger "ColumnWidth" ="1080"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Commandes.[Adresse livraison]"
        dbInteger "ColumnWidth" ="4200"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Commandes.[Code postal livraison]"
        dbInteger "ColumnWidth" ="2145"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Commandes.[Code client]"
        dbInteger "ColumnWidth" ="3510"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Clients.Société"
        dbInteger "ColumnWidth" ="3270"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Clients.Adresse"
        dbInteger "ColumnWidth" ="4200"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="[Détails commandes].[Réf produit]"
        dbInteger "ColumnWidth" ="3225"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Commandes.Destinataire"
        dbInteger "ColumnWidth" ="3270"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Vendeur"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="PrixTotal"
        dbInteger "ColumnWidth" ="1545"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00\" F\";-#,##0.00\" F\""
        dbMemo "Caption" ="Prix total"
    End
End
Begin
    State =0
    Left =16
    Top =6
    Right =594
    Bottom =350
    Left =-1
    Top =-1
    Right =571
    Bottom =192
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =33
        Top =104
        Right =129
        Bottom =166
        Top =0
        Name ="Messagers"
        Name =""
    End
    Begin
        Left =423
        Top =5
        Right =531
        Bottom =112
        Top =0
        Name ="Produits"
        Name =""
    End
    Begin
        Left =297
        Top =95
        Right =393
        Bottom =157
        Top =0
        Name ="Employés"
        Name =""
    End
    Begin
        Left =33
        Top =3
        Right =128
        Bottom =80
        Top =0
        Name ="Clients"
        Name =""
    End
    Begin
        Left =159
        Top =5
        Right =267
        Bottom =157
        Top =0
        Name ="Commandes"
        Name =""
    End
    Begin
        Left =297
        Top =5
        Right =393
        Bottom =82
        Top =0
        Name ="Détails commandes"
        Name =""
    End
End
