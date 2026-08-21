SELECT DISTINCTROW
  Clients.[Code client],
  Clients.Société,
  Clients.Ville,
  Clients.Pays
FROM
  Clients
  RIGHT JOIN Commandes ON Clients.[Code client] = Commandes.[Code client]
WHERE
  (
    (
      (Commandes.[Date commande]) Between #1/1/95#
      And #12/31/95#
    )
  );
