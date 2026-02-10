SELECT
  DISTINCTROW Factures.*
FROM
  Factures
WHERE
  (
    (
      (Factures.[N° commande])= [Forms]![Commandes]![N° commande]
    )
  );
