PARAMETERS [Date début] DateTime,
[Date fin] DateTime;
SELECT
  DISTINCTROW Employés.Pays,
  Employés.Nom,
  Employés.Prénom,
  Commandes.[Date envoi],
  Commandes.[N° commande],
  [Sous-totaux commandes].SousTotal AS MontantVente
FROM
  Employés
  INNER JOIN (
    Commandes
    INNER JOIN [Sous-totaux commandes] ON Commandes.[N° commande] = [Sous-totaux commandes].[N° commande]
  ) ON Employés.[N° employé] = Commandes.[N° employé]
WHERE
  (
    (
      (Commandes.[Date envoi]) Between [Date début]
      And [Date fin]
    )
  );
