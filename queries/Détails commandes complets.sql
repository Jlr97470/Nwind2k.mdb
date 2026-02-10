SELECT
  DISTINCTROW [Détails commandes].[N° commande],
  [Détails commandes].[Réf produit],
  Produits.[Nom du produit],
  [Détails commandes].[Prix unitaire],
  [Détails commandes].Quantité,
  [Détails commandes].[Remise (%)],
  CCur(
    [Détails commandes].[Prix unitaire] * [Quantité] *(1 - [Remise (%)])/ 100
  )* 100 AS PrixTotal
FROM
  Produits
  INNER JOIN [Détails commandes] ON Produits.[Réf produit] = [Détails commandes].[Réf produit]
ORDER BY
  [Détails commandes].[N° commande];
