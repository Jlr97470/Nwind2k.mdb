PARAMETERS Forms![Dialogue ventes annuelles]![Date début] DateTime,
Forms![Dialogue ventes annuelles]![Date fin] DateTime;
SELECT
  DISTINCTROW Commandes.[Date envoi],
  Commandes.[N° commande],
  [Sous-totaux commandes].SousTotal,
  Format([Date envoi], "yyyy") AS Année
FROM
  Commandes
  INNER JOIN [Sous-totaux commandes] ON Commandes.[N° commande] = [Sous-totaux commandes].[N° commande]
WHERE
  (
    (
      (Commandes.[Date envoi]) Is Not Null
      And (Commandes.[Date envoi]) Between [Forms]![Dialogue Ventes annuelles]![Date début]
      And [Forms]![Dialogue Ventes annuelles]![Date fin]
    )
  );
