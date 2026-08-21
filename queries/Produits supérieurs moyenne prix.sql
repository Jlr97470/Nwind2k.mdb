SELECT DISTINCTROW
  Produits.[Nom du produit],
  Produits.[Prix unitaire]
FROM
  Produits
WHERE
  (
    (
      (Produits.[Prix unitaire]) >(
        SELECT
          AVG([Prix unitaire])
        From
          Produits
      )
    )
  )
ORDER BY
  Produits.[Prix unitaire] DESC;
