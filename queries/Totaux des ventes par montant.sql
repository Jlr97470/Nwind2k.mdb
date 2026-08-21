SELECT DISTINCTROW
  [Sous-totaux commandes].SousTotal AS MontantVente,
  Commandes.[N° commande],
  Clients.Société,
  Commandes.[Date envoi]
FROM
  Clients
  INNER JOIN (
    Commandes
    INNER JOIN [Sous-totaux commandes] ON Commandes.[N° commande] = [Sous-totaux commandes].[N° commande]
  ) ON Clients.[Code client] = Commandes.[Code client]
WHERE
  (
    (
      (
        [Sous-totaux commandes].SousTotal
      ) > 12500
    )
    AND (
      (Commandes.[Date envoi]) Between #1/1/95#
      And #12/31/95#
    )
  );
