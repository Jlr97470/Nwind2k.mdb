SELECT DISTINCTROW
  Catégories.[Nom de catégorie],
  Catégories.Description,
  Catégories.Illustration,
  Produits.[Réf produit],
  Produits.[Nom du produit],
  Produits.[Quantité par unité],
  Produits.[Prix unitaire]
FROM
  Catégories
  INNER JOIN Produits ON Catégories.[Code catégorie] = Produits.[Code catégorie]
WHERE
  (
    (
      (Produits.Indisponible) = No
    )
  );
