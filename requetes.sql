#se connecter
SELECT * FROM utilisateur WHERE 'motdepasse'="1234" AND 'identifiant'="bonjour" ; 

#Créer un particulier
INSERT INTO particulier (id,nom,prenom) VALUES ("1","Bidule", "Toto");
INSERT INTO Telephone (telephone,id) VALUES ("06.25.24.58.21","1");
INSERT INTO email (email,id) VALUES ("toto.bidule@gmail.com","1");
INSERT INTO adresse (adresse,idadresse) VALUES ("56 rue lacombe","1");


#Créer un entreprise
INSERT INTO entreprise (id,siret,tva,nomentreprise,siteweb,numeroregistrecommerce,email,adresse,telephone) 
VALUES ("1","362 521 879 00034","30","hello","hello.com","RCS PARIS B 517 403 572","hello@contact.com","152 rue bernard","03.26.25.35.15");

#Supprimer un contact 
DELETE FROM particulier WHERE id="1";





#Modifier un contact
UPDATE professionnel SET email="helloo@contact.com" WHERE siret="362 521 879 00034",




#Sinscire
INSERT INTO utilisateur ;