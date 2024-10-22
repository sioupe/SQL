SELECT * FROM article;
SELECT * FROM article WHERE PRIX>2.00;
SELECT * FROM article WHERE PRIX>2.00 AND PRIX<6.25;
SELECT * FROM article WHERE PRIX BETWEEN 2.00 AND 6.25;
SELECT * FROM article WHERE PRIX NOT BETWEEN 2.00 AND 6.25;
SELECT * FROM article WHERE !(PRIX>2.00 AND PRIX<6.25);
SELECT * FROM article,fournisseur WHERE ID_FOU=fournisseur.ID && (fournisseur.NOM = "Francaise d\'Imports" OR fournisseur.NOM = "Dubois & Fils");