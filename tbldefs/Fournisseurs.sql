CREATE TABLE [Fournisseurs] (
  [N° fournisseur] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Société] VARCHAR (40),
  [Contact] VARCHAR (30),
  [Fonction] VARCHAR (40),
  [Adresse] VARCHAR (60),
  [Ville] VARCHAR (15),
  [Région] VARCHAR (15),
  [Code postal] VARCHAR (10),
  [Pays] VARCHAR (15),
  [Téléphone] VARCHAR (24),
  [Fax] VARCHAR (24),
  [Page d''accueil] LONGTEXT
)
