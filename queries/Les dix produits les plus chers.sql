SELECT DISTINCTROW TOP 10
  Produits.[Nom du produit] AS LesDixProduitsLesPlusChers,
  Produits.[Prix unitaire]
FROM
  Produits
ORDER BY
  Produits.[Prix unitaire] DESC;
