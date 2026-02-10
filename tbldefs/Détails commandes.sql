CREATE TABLE [Détails commandes] (
  [N° commande] LONG CONSTRAINT [CommandesDétails commandes] REFERENCES [Commandes] ([N° commande]),
  [Réf produit] LONG CONSTRAINT [ProduitsDétails commandes] REFERENCES [Produits] ([Réf produit]),
  [Prix unitaire] CURRENCY,
  [Quantité] SHORT,
  [Remise (%)] SINGLE,
   CONSTRAINT [PrimaryKey] PRIMARY KEY ([N° commande], [Réf produit])
)
