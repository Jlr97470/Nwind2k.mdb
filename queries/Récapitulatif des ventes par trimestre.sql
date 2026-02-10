SELECT
  DISTINCTROW Commandes.[Date envoi],
  Commandes.[N° commande],
  [Sous-totaux commandes].SousTotal
FROM
  Commandes
  INNER JOIN [Sous-totaux commandes] ON Commandes.[N° commande] = [Sous-totaux commandes].[N° commande]
WHERE
  (
    (
      (Commandes.[Date envoi]) Is Not Null
    )
  )
ORDER BY
  Commandes.[Date envoi];
