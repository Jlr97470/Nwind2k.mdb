SELECT DISTINCTROW
  [Détails commandes].[N° commande],
  Sum(
    CCur(
      [Prix unitaire] * [Quantité] *(1 - [Remise (%)]) / 100
    ) * 100
  ) AS SousTotal
FROM
  [Détails commandes]
GROUP BY
  [Détails commandes].[N° commande];
