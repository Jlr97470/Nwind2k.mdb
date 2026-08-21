SELECT DISTINCTROW
  Catégories.[Nom de catégorie],
  Produits.[Nom du produit],
  Produits.[Quantité par unité],
  Produits.[Unités en stock],
  Produits.Indisponible
FROM
  Catégories
  INNER JOIN Produits ON Catégories.[Code catégorie] = Produits.[Code catégorie]
WHERE
  (
    (
      (Produits.Indisponible) <> Yes
    )
  )
ORDER BY
  Catégories.[Nom de catégorie],
  Produits.[Nom du produit];
