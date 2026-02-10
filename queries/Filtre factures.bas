Operation =1
Option =8
Where ="(((Factures.[N° commande])=[Forms]![Commandes]![N° commande]))"
Begin InputTables
    Name ="Factures"
End
Begin OutputColumns
    Expression ="Factures.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "FilterOn" ="0"
dbText "Description" ="Filtre les enregistrements pour l'état Facture. Est utilisé par l'événement Clic"
    "k du bouton Imprimer du formulaire Commandes."
dbBoolean "OrderOn" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
Begin
End
Begin
    State =0
    Left =58
    Top =26
    Right =577
    Bottom =343
    Left =-1
    Top =-1
    Right =512
    Bottom =148
    Left =41
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =156
        Bottom =113
        Top =0
        Name ="Factures"
        Name =""
    End
End
