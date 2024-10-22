SELECT * FROM article ORDER BY (DESIGNATION);
SELECT * FROM article ORDER BY (PRIX) DESC;
SELECT * FROM article WHERE DESIGNATION LIKE "Boulon%" ORDER BY (PRIX) ASC;
SELECT * FROM article WHERE DESIGNATION LIKE "%sachet%";
SELECT * FROM article WHERE LOWER(DESIGNATION) LIKE "%sachet%" ;
SELECT * FROM article,fournisseur WHERE ID_FOU=fournisseur.ID ORDER BY fournisseur.NOM , PRIX DESC;
SELECT * FROM article INNER JOIN fournisseur ON ID_FOU=fournisseur.ID WHERE nom ="Dubois & Fils";
SELECT AVG(PRIX) AS "moyenne des prix des articles" FROM article INNER JOIN fournisseur ON ID_FOU=fournisseur.ID WHERE nom ="Dubois & Fils";
SELECT fournisseur.NOM ,AVG(PRIX) AS "moyenne des prix des articles" FROM article,fournisseur WHERE ID_FOU=fournisseur.ID GROUP BY NOM ;
SELECT * FROM bon WHERE DATE_CMDE BETWEEN '2019-03-01' AND '2019-04-05 12:00:00';
SELECT * FROM bon WHERE bon.ID IN (SELECT ID_BON FROM compo INNER JOIN article ON ID_ART=article.ID WHERE article.DESIGNATION LIKE "%boulon%");
SELECT bon.*,fournisseur.NOM FROM bon,fournisseur WHERE ID_FOU =fournisseur.ID AND bon.ID IN (SELECT ID_BON FROM compo INNER JOIN article ON ID_ART=article.ID WHERE article.DESIGNATION LIKE "%boulon%");
SELECT SUM(article.PRIX)FROM bon,compo,article WHERE ID_BON=bon.ID AND ID_ART=article.ID GROUP BY ID_BON;
SELECT SUM(compo.QTE)FROM bon,compo,article WHERE ID_BON=bon.ID AND ID_ART=article.ID GROUP BY ID_BON;
SELECT bon.ID,SUM(compo.QTE)FROM bon,compo,article WHERE ID_BON=bon.ID AND ID_ART=article.ID GROUP BY ID_BON HAVING SUM(compo.QTE)>25;
facultatif
SELECT * FROM article AS A1,article AS A2  WHERE A1.ID_FOU != A2.ID_FOU AND A1.DESIGNATION=A2.DESIGNATION;
