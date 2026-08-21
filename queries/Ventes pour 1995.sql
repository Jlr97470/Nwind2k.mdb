SELECT DISTINCTROW
  Catégories.[Nom de catégorie],
  Produits.[Nom du produit],
  Sum(
    CCur(
      [Détails commandes].[Prix unitaire] * [Quantité] *(1 - [Remise (%)]) / 100
    ) * 100
  ) AS VentesProduit
FROM
  (
    Catégories
    INNER JOIN Produits ON Catégories.[Code catégorie] = Produits.[Code catégorie]
  )
  INNER JOIN (
    Commandes
    INNER JOIN [Détails commandes] ON Commandes.[N° commande] = [Détails commandes].[N° commande]
  ) ON Produits.[Réf produit] = [Détails commandes].[Réf produit]
WHERE
  (
    (
      (Commandes.[Date envoi]) Between #1/1/95#
      And #12/31/95#
    )
  )
GROUP BY
  Catégories.[Nom de catégorie],
  Produits.[Nom du produit];
