USE kaamelott;

-- Dans un fichier .sql, les tirets en début de ligne permettent de commenter du code 
-- afin qu'il ne soit pas exécuté
-- ⬇ écrire les requêtes de l'atelier ici ⬇
-- mysql -u <your_name> -p<your_pass> -t < workshop.sql

SELECT firstname, lastname, age FROM Person;
SELECT p.firstname, p.lastname, k.name FROM Person AS p 
INNER JOIN Kingdom AS k ON k.id=p.kingdom_id;

SELECT p.firstname, p.lastname, k.name FROM Person AS p 
LEFT JOIN Kingdom AS k ON k.id=p.kingdom_id;

SELECT ROUND(AVG(age)) FROM Person;

SELECT ROUND(AVG(age)) FROM Person WHERE role_id !=3;
--SELECT ROUND(AVG(age)) FROM Person JOIN Role ON p.role_id = role_id WHERE role NOT LIKE "magicien";
--SELECT ROUND(AVG(age)) FROM Person JOIN Role ON p.role_id = role_id WHERE role <> "magicien";
--SELECT ROUND(AVG(age)) FROM Person JOIN Role ON p.role_id = role_id WHERE p.role NOT IN (3);


SELECT COUNT(p.id), name FROM Person AS p 
RIGHT JOIN Kingdom AS k ON k.id=p.kingdom_id GROUP BY k.name ;

SELECT role, ROUND(AVG(p.age)) FROM Person AS p 
INNER JOIN Role AS r ON r.id=p.role_id GROUP BY r.id;

SELECT firstname, lastname, age, role, k.name FROM Person AS p 
LEFT JOIN Role AS r ON r.id=p.role_id 
INNER JOIN Kingdom AS k ON k.id=p.kingdom_id;

SELECT name, COUNT(p.id) FROM Kingdom AS k 
INNER JOIN Person AS p ON k.id=p.kingdom_id
GROUP BY name 
HAVING COUNT(*) >=2; 