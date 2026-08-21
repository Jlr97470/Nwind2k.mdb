SELECT DISTINCTROW
  Catégories.[Code catégorie],
  Catégories.[Nom de catégorie],
  Produits.[Nom du produit],
  Sum(
    [Détails commandes complets].PrixTotal
  ) AS VentesProduit
FROM
  Catégories
  INNER JOIN (
    Produits
    INNER JOIN (
      Commandes
      INNER JOIN [Détails commandes complets] ON Commandes.[N° commande] = [Détails commandes complets].[N° commande]
    ) ON Produits.[Réf produit] = [Détails commandes complets].[Réf produit]
  ) ON Catégories.[Code catégorie] = Produits.[Code catégorie]
WHERE
  (
    (
      (Commandes.[Date commande]) Between #1/1/95#
      And #12/31/95#
    )
  )
GROUP BY
  Catégories.[Code catégorie],
  Catégories.[Nom de catégorie],
  Produits.[Nom du produit]
ORDER BY
  Produits.[Nom du produit];
