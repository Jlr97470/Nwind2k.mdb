SELECT DISTINCTROW
  Commandes.[N° commande],
  Commandes.[Code client],
  Commandes.[N° employé],
  Commandes.[Date commande],
  Commandes.[À livrer avant],
  Commandes.[Date envoi],
  Commandes.[N° messager],
  Commandes.Port,
  Commandes.Destinataire,
  Commandes.[Adresse livraison],
  Commandes.[Ville livraison],
  Commandes.[Région livraison],
  Commandes.[Code postal livraison],
  Commandes.[Pays livraison],
  Clients.Société,
  Clients.Adresse,
  Clients.Ville,
  Clients.Région,
  Clients.[Code postal],
  Clients.Pays
FROM
  Clients
  INNER JOIN Commandes ON Clients.[Code client] = Commandes.[Code client];
