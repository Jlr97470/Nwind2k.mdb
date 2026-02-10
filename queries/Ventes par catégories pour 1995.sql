SELECT
  DISTINCTROW [Ventes pour 1995].[Nom de catégorie],
  Sum(
    [Ventes pour 1995].VentesProduit
  ) AS SommeDesVentes
FROM
  [Ventes pour 1995]
GROUP BY
  [Ventes pour 1995].[Nom de catégorie];
