Operation =1
Option =8
Where ="(((Commandes.[Date envoi]) Between [Date début] And [Date fin]))"
Begin InputTables
    Name ="Employés"
    Name ="Commandes"
    Name ="Sous-totaux commandes"
End
Begin OutputColumns
    Expression ="Employés.Pays"
    Expression ="Employés.Nom"
    Expression ="Employés.Prénom"
    Expression ="Commandes.[Date envoi]"
    Expression ="Commandes.[N° commande]"
    Alias ="MontantVente"
    Expression ="[Sous-totaux commandes].SousTotal"
End
Begin Parameters
    Name ="Date début"
    Flag =8
    Name ="Date fin"
    Flag =8
End
Begin Joins
    LeftTable ="Commandes"
    RightTable ="Sous-totaux commandes"
    Expression ="Commandes.[N° commande] = [Sous-totaux commandes].[N° commande]"
    Flag =1
    LeftTable ="Employés"
    RightTable ="Commandes"
    Expression ="Employés.[N° employé] = Commandes.[N° employé]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderOn" ="0"
dbText "Description" ="(Paramètre) Source d'enregistrements pour l'état Ventes par représentant par pay"
    "s. Requiert une date de début et de fin. "
dbByte "DatasheetGridlinesBehavior" ="3"
dbBoolean "OrderByOn" ="0"
dbByte "RecordsetType" ="0"
Begin
    Begin
        dbText "Name" ="MontantVente"
        dbInteger "ColumnWidth" ="1470"
        dbBoolean "ColumnHidden" ="0"
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
    ColumnsShown =539
    Begin
        Left =38
        Top =9
        Right =134
        Bottom =116
        Top =0
        Name ="Employés"
        Name =""
    End
    Begin
        Left =164
        Top =9
        Right =271
        Bottom =116
        Top =0
        Name ="Commandes"
        Name =""
    End
    Begin
        Left =298
        Top =9
        Right =394
        Bottom =86
        Top =0
        Name ="Sous-totaux commandes"
        Name =""
    End
End
