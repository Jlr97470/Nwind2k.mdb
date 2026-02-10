CREATE TABLE [Employés] (
  [N° employé] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Nom] VARCHAR (20),
  [Prénom] VARCHAR (10),
  [Fonction] VARCHAR (30),
  [Titre de courtoisie] VARCHAR (25),
  [Date de naissance] DATETIME,
  [Date d''embauche] DATETIME,
  [Adresse] VARCHAR (60),
  [Ville] VARCHAR (15),
  [Région] VARCHAR (15),
  [Code postal] VARCHAR (10),
  [Pays] VARCHAR (15),
  [Tél domicile] VARCHAR (24),
  [Extension] VARCHAR (4),
  [Photo] LONGBINARY,
  [Notes] LONGTEXT,
  [Rend compte à] LONG
)
