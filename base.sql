#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: adresse
#------------------------------------------------------------

CREATE TABLE adresse(
        idadresse Int  Auto_increment  NOT NULL ,
        adresse   Varchar (20) NOT NULL
	,CONSTRAINT adresse_PK PRIMARY KEY (idadresse)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Particulier
#------------------------------------------------------------

CREATE TABLE Particulier(
        id     Int  Auto_increment  NOT NULL ,
        nom    Varchar (20) NOT NULL ,
        prenom Varchar (20) NOT NULL
	,CONSTRAINT Particulier_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Entreprise
#------------------------------------------------------------

CREATE TABLE Entreprise(
        siret                  Int NOT NULL ,
        tva                    Int NOT NULL ,
        nomentreprise          Varchar (50) NOT NULL ,
        siteweb                Varchar (200) NOT NULL ,
        numeroregistrecommerce Int NOT NULL ,
        email                  Varchar (50) NOT NULL ,
        adresse                Varchar (50) NOT NULL ,
        telephone              Int NOT NULL ,
        id                     Int NOT NULL
	,CONSTRAINT Entreprise_PK PRIMARY KEY (siret)

	,CONSTRAINT Entreprise_Particulier_FK FOREIGN KEY (id) REFERENCES Particulier(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Telephone
#------------------------------------------------------------

CREATE TABLE Telephone(
        telephone Int NOT NULL ,
        id        Int NOT NULL
	,CONSTRAINT Telephone_PK PRIMARY KEY (telephone)

	,CONSTRAINT Telephone_Particulier_FK FOREIGN KEY (id) REFERENCES Particulier(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: email
#------------------------------------------------------------

CREATE TABLE email(
        email Varchar (20) NOT NULL ,
        id    Int NOT NULL
	,CONSTRAINT email_PK PRIMARY KEY (email)

	,CONSTRAINT email_Particulier_FK FOREIGN KEY (id) REFERENCES Particulier(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: utilisateur
#------------------------------------------------------------

CREATE TABLE utilisateur(
        numutilisateur Int  Auto_increment  NOT NULL ,
        motdepasse     Varchar (20) NOT NULL ,
        identifiant    Varchar (20) NOT NULL
	,CONSTRAINT utilisateur_PK PRIMARY KEY (numutilisateur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: habiter
#------------------------------------------------------------

CREATE TABLE habiter(
        idadresse Int NOT NULL ,
        id        Int NOT NULL
	,CONSTRAINT habiter_PK PRIMARY KEY (idadresse,id)

	,CONSTRAINT habiter_adresse_FK FOREIGN KEY (idadresse) REFERENCES adresse(idadresse)
	,CONSTRAINT habiter_Particulier0_FK FOREIGN KEY (id) REFERENCES Particulier(id)
)ENGINE=InnoDB;

