SELECT
  DISTINCTROW Produits.*,
  Catégories.[Nom de catégorie]
FROM
  Catégories
  INNER JOIN Produits ON Catégories.[Code catégorie] = Produits.[Code catégorie]
WHERE
  (
    (
      (Produits.Indisponible)= No
    )
  );
