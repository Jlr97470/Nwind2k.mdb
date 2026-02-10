Version =0
ColumnsShown =3
Begin
    Comment ="Macros attachées au formulaire Clients."
End
Begin
End
Begin
    Comment ="Macro attachée à l'événement Avant MAJ du champ Code client."
End
Begin
    MacroName ="ValiderCode"
    Condition ="DLookUp(\"[Code client]\",\"[Clients]\",\"[Code client] = Form.[Code client] \")"
        " Is Not Null"
    Action ="MsgBox"
    Comment ="Si la valeur de Code client n'est pas unique, afficher un message."
    Argument ="Le code client que vous avez tapé existe déjà. Tapez un numéro unique."
    Argument ="-1"
    Argument ="4"
    Argument ="Code client dupliqué"
End
Begin
    Condition ="..."
    Action ="CancelEvent"
    Comment ="Revient au contrôle Code client."
End
Begin
End
Begin
    Comment ="Macro attachée à l'événement Après MAJ du formulaire."
End
Begin
    MacroName ="MAJListePays"
    Action ="Requery"
    Comment ="Actualise le contrôle Pays."
    Argument ="Pays"
End
