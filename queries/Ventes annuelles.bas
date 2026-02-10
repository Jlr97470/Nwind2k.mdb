Operation =1
Option =8
Where ="(((Commandes.[Date envoi]) Is Not Null And (Commandes.[Date envoi]) Between [For"
    "ms]![Dialogue Ventes annuelles]![Date début] And [Forms]![Dialogue Ventes annuel"
    "les]![Date fin]))"
Begin InputTables
    Name ="Commandes"
    Name ="Sous-totaux commandes"
End
Begin OutputColumns
    Expression ="Commandes.[Date envoi]"
    Expression ="Commandes.[N° commande]"
    Expression ="[Sous-totaux commandes].SousTotal"
    Alias ="Année"
    Expression ="Format([Date envoi],\"yyyy\")"
End
Begin Parameters
    Name ="Forms!Dialogue ventes annuelles!Date début"
    Flag =8
    Name ="Forms!Dialogue ventes annuelles!Date fin"
    Flag =8
End
Begin Joins
    LeftTable ="Commandes"
    RightTable ="Sous-totaux commandes"
    Expression ="Commandes.[N° commande] = [Sous-totaux commandes].[N° commande]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderOn" ="0"
dbText "Description" ="(Paramètre) Source d'enregistrements pour l'état Ventes annuelles et ses sous-ét"
    "ats. Se réfère aux contrôles du dialogue Ventes annuelles pour la valeur des par"
    "amètres. Utilise la fonction Format pour extraire l'année de la date d'envoi."
dbByte "DatasheetGridlinesBehavior" ="3"
dbBoolean "OrderByOn" ="0"
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
        Left =26
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="Commandes"
        Name =""
    End
    Begin
        Left =170
        Top =6
        Right =266
        Bottom =83
        Top =0
        Name ="Sous-totaux commandes"
        Name =""
    End
End
