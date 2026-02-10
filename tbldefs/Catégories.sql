CREATE TABLE [Catégories] (
  [Code catégorie] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Nom de catégorie] VARCHAR (25) CONSTRAINT [Nom de catégorie] UNIQUE,
  [Description] LONGTEXT,
  [Illustration] LONGBINARY
)
