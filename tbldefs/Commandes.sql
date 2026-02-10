CREATE TABLE [Commandes] (
  [N° commande] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [Code client] VARCHAR (5) CONSTRAINT [ClientsCommandes] REFERENCES [Clients] ([Code client]),
  [N° employé] LONG CONSTRAINT [EmployésCommandes] REFERENCES [Employés] ([N° employé]),
  [Date commande] DATETIME,
  [À livrer avant] DATETIME,
  [Date envoi] DATETIME,
  [N° messager] LONG CONSTRAINT [MessagersCommandes] REFERENCES [Messagers] ([N° messager]),
  [Port] CURRENCY,
  [Destinataire] VARCHAR (40),
  [Adresse livraison] VARCHAR (60),
  [Ville livraison] VARCHAR (15),
  [Région livraison] VARCHAR (15),
  [Code postal livraison] VARCHAR (10),
  [Pays livraison] VARCHAR (15)
)
