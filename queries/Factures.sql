SELECT DISTINCTROW
  Commandes.Destinataire,
  Commandes.[Adresse livraison],
  Commandes.[Ville livraison],
  Commandes.[Région livraison],
  Commandes.[Code postal livraison],
  Commandes.[Pays livraison],
  Commandes.[Code client],
  Clients.Société,
  Clients.Adresse,
  Clients.Ville,
  Clients.Région,
  Clients.[Code postal],
  Clients.Pays,
  [Prénom] & " " & [Nom] AS Vendeur,
  Commandes.[N° commande],
  Commandes.[Date commande],
  Commandes.[À livrer avant],
  Commandes.[Date envoi],
  Messagers.[Nom du messager],
  [Détails commandes].[Réf produit],
  Produits.[Nom du produit],
  [Détails commandes].[Prix unitaire],
  [Détails commandes].Quantité,
  [Détails commandes].[Remise (%)],
  CCur(
    [Détails commandes].[Prix unitaire] * [Quantité] *(1 - [Remise (%)]) / 100
  ) * 100 AS PrixTotal,
  Commandes.Port
FROM
  Messagers
  INNER JOIN (
    Employés
    INNER JOIN (
      Produits
      INNER JOIN (
        (
          Clients
          INNER JOIN Commandes ON Clients.[Code client] = Commandes.[Code client]
        )
        INNER JOIN [Détails commandes] ON Commandes.[N° commande] = [Détails commandes].[N° commande]
      ) ON Produits.[Réf produit] = [Détails commandes].[Réf produit]
    ) ON Employés.[N° employé] = Commandes.[N° employé]
  ) ON Messagers.[N° messager] = Commandes.[N° messager];
