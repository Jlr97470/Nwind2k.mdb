SELECT
  Clients.Ville,
  Clients.Société,
  Clients.Contact,
  "Clients" AS Relation
FROM
  Clients
UNION
SELECT
  Fournisseurs.Ville,
  Fournisseurs.Société,
  Fournisseurs.Contact,
  "Fournisseurs"
FROM
  Fournisseurs
ORDER BY
  Ville,
  Société;
