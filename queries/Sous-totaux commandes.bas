Operation =1
Option =8
Begin InputTables
    Name ="Détails commandes"
End
Begin OutputColumns
    Expression ="[Détails commandes].[N° commande]"
    Alias ="SousTotal"
    Expression ="Sum(CCur([Prix unitaire]*[Quantité]*(1-[Remise (%)])/100)*100)"
End
Begin Groups
    Expression ="[Détails commandes].[N° commande]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderOn" ="0"
dbText "Description" ="Source d'enregistrements pour d'autres requêtes. Utilise les fonctions Sum et CC"
    "ur pour calculer le sous-total pour chaque commande."
dbByte "DatasheetGridlinesBehavior" ="3"
dbBoolean "OrderByOn" ="0"
dbByte "RecordsetType" ="0"
Begin
End
Begin
    State =0
    Left =114
    Top =25
    Right =548
    Bottom =335
    Left =-1
    Top =-1
    Right =427
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =140
        Bottom =113
        Top =0
        Name ="Détails commandes"
        Name =""
    End
End
