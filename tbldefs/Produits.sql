CREATE TABLE [Produits] (
  [Réf produit] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Nom du produit] VARCHAR (40),
  [N° fournisseur] LONG CONSTRAINT [FournisseursProduits] REFERENCES [Fournisseurs] ([N° fournisseur]),
  [Code catégorie] LONG CONSTRAINT [CatégoriesProduits] REFERENCES [Catégories] ([Code catégorie]),
  [Quantité par unité] VARCHAR (30),
  [Prix unitaire] CURRENCY,
  [Unités en stock] SHORT,
  [Unités commandées] SHORT,
  [Niveau de réapprovisionnement] SHORT,
  [Indisponible] BIT
)
