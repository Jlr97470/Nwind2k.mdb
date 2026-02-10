TRANSFORM Sum(
  CCur(
    [Détails commandes].[Prix unitaire] * [Quantité] *(1 - [Remise (%)])/ 100
  )* 100
) AS MontantProduit
SELECT
  Produits.[Nom du produit],
  Commandes.[Code client],
  Year([Date commande]) AS AnnéeCommande
FROM
  Produits
  INNER JOIN (
    Commandes
    INNER JOIN [Détails commandes] ON Commandes.[N° commande] = [Détails commandes].[N° commande]
  ) ON Produits.[Réf produit] = [Détails commandes].[Réf produit]
WHERE
  (
    (
      (Commandes.[Date commande]) Between #1/1/95#
      And #12/31/95#
    )
  )
GROUP BY
  Produits.[Nom du produit],
  Commandes.[Code client],
  Year([Date commande]) PIVOT "Trim " & DatePart("q", [Date commande], 1) In (
    "Trim 1", "Trim 2", "Trim 3", "Trim 4"
  );
