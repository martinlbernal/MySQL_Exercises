
SELECT *
FROM fabricante;

INSERT INTO fabricante (codigo, nombre) VALUES (10, 'hp');
INSERT INTO fabricante (codigo, nombre) VALUES (11, 'LG');

UPDATE fabricante
SET nombre= 'HP2'
WHERE codigo = '10';

DELETE
FROM fabricante
WHERE codigo = '11';

ALTER TABLE fabricante
ADD nacionalidad VARCHAR(25); 

UPDATE fabricante 
SET nacionalidad='Corea del Sur'
WHERE codigo = '9';

UPDATE fabricante 
SET nacionalidad='China'
WHERE codigo IN ('1','2','3','4');

SELECT nombre
FROM fabricante
WHERE codigo=5;

SELECT *
FROM fabricante
WHERE nacionalidad='china' OR nacionalidad = 'corea del sur';

SELECT COUNT(*)
FROM fabricante
WHERE nacionalidad='japon';

SELECT MIN(codigo)
FROM fabricante;

SELECT *
FROM fabricante
WHERE codigo IN(3,5);

SELECT *
FROM fabricante
WHERE nombre LIKE '%su%';

SELECT *
FROM fabricante
WHERE nombre LIKE 'suS%';

SELECT *
FROM fabricante
WHERE nombre LIKE '%suS';

SELECT *
FROM fabricante
WHERE codigo BETWEEN 2 AND 7;  

SELECT nacionalidad
FROM fabricante
GROUP BY nacionalidad;  

SELECT COUNT(CODIGO), nacionalidad
FROM fabricante
GROUP BY nacionalidad
HAVING COUNT(codigo) > 3;  

SELECT nombre AS marcas FROM fabricante;

CREATE TABLE nombres(
id INT UNSIGNED PRIMARY KEY,
nombre VARCHAR(60) NOT NULL
);

SELECT * 
FROM apellidos;

INSERT INTO nombres VALUES (2, 'juli');
INSERT INTO nombres VALUES (3, 'cele');
INSERT INTO nombres VALUES (4, 'gonzalo');
INSERT INTO nombres VALUES (5, 'analía');
INSERT INTO nombres VALUES (6, 'vanesa');


INSERT INTO apellidos VALUES (2,'bernal', 'los angeles',2);
INSERT INTO apellidos VALUES (3,'victorio', 'rosario',3);
INSERT INTO apellidos VALUES (4,'franco', 'anisacate',4);
INSERT INTO apellidos VALUES (1,'bernal', 'rosario',1);
INSERT INTO apellidos VALUES (5,'de luca', 'rosario',5);
INSERT INTO apellidos VALUES (1,'bernal', 'rosario',1);


CREATE TABLE apellidos(
id_apellido INT UNSIGNED PRIMARY KEY,
apellido VARCHAR(60) NOT NULL,
ciudad VARCHAR(60) NOT NULL,
id_persona INT UNSIGNED NOT NULL, FOREIGN KEY (id_persona) REFERENCES nombres(id)

);
SELECT n.id, n.nombre, a.apellido, a.ciudad, a.id_apellido
FROM nombres n, apellidos a
WHERE n.id = a.id_persona
AND n.id=2;

SELECT n.nombre
FROM nombres n, apellidos a
WHERE n.id = a.id_persona
AND a.apellido='bernal'
AND a.id_apellido<3;

SELECT *
FROM nombres
RIGHT JOIN apellidos
ON nombres.id = apellidos.id_persona;

SELECT *
FROM nombres n
WHERE EXISTS (SELECT a.id_persona
FROM apellidos a
WHERE a.id_persona = n.id
);

SELECT *
FROM nombres n
WHERE NOT EXISTS (SELECT a.id_persona
FROM apellidos a
WHERE  a.id_persona = n.id
);

SELECT *
FROM nombres n
CROSS JOIN apellidos a;

SELECT *
FROM nombres
ORDER BY nombre, id DESC;

SELECT a.apellido, n.nombre 
FROM nombres n, apellidos a
WHERE n.id = a.id_persona
ORDER BY a.apellido, n.nombre;

SELECT a.apellido, COUNT(*), sum(a.id_persona)
FROM nombres n, apellidos a
WHERE n.id = a.id_persona
GROUP BY a.apellido
HAVING SUM(a.id_persona) != '1';






