#Crear una tabla con las siguientes instrucciones#
#PERSONAJES: id_personajes, nombre_real, personaje, inteligencia, fuerza, velocidad, poder, aparicion, ocupacion, id_creador#
#CREADOR: id_creador, nombre#

CREATE TABLE creador (
id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre VARCHAR(20) NOT NULL
);

CREATE TABLE personajes (
  id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_real VARCHAR(20) NOT NULL,
  personaje VARCHAR(20) NOT NULL,
  inteligencia INT(10) NOT NULL,
  fuerza VARCHAR(10) NOT NULL,
  velocidad INT(11) NOT NULL,
  poder INT(11) NOT NULL,
  aparicion INT(11) NOT NULL,
  ocupacion VARCHAR(30) NULL,
  id_creador INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
  );
  
 #Insertar en las tablas creadas los siguientes datos:# 
 INSERT INTO creador VALUES (NULL, 'Marvel'); 
 INSERT INTO creador VALUES (NULL, 'DC Comics');
  
 INSERT INTO personajes VALUES (NULL, 'Bruce Banner','Hulk',160,'600mil',75,98,1962, 'Físico Nuclear',1);
 INSERT INTO personajes VALUES (NULL, 'Tony Stark','Iron Man',170,'200mil',70,123,1963, 'Inventor Industrial',1);
 INSERT INTO personajes VALUES (NULL, 'Thor Odinson','Thor',145,'infinita',100,235,1962, 'Rey de Asgard',1);
 INSERT INTO personajes VALUES (NULL, 'Wanda Maximoff','Bruja Escarlata',170,'100mil',90,345,1964, 'Bruja',1);
 INSERT INTO personajes VALUES (NULL, 'Carol Danvers','Capitana Marvel',157,'250mil',85,128,1968, 'Oficial de Inteligencia',1);
 INSERT INTO personajes VALUES (NULL, 'Thanos','Thanos',170,'infinita',40,306,1973, 'Adorador de la muerte',1);
 INSERT INTO personajes VALUES (NULL, 'Peter Parker','Spiderman',165,'25mil',80,74,1962, 'Fotógrafo',1);
 INSERT INTO personajes VALUES (NULL, 'Steve Rogers','Capitan América',145,'600',45,60,1941, 'Oficial Federal',1);
 INSERT INTO personajes VALUES (NULL, 'Bobby Drake','Ice Man',140,'2mil',64,122,1963, 'Contador',1);
 INSERT INTO personajes VALUES (NULL, 'Barry Allen','Flash',160,'10mil',120,168,1956, 'Científico Forense',2);
 INSERT INTO personajes VALUES (NULL, 'Bruce Wayne','Batman',170,'500',32,47,1939, 'Hombre de Negocios',2);
 INSERT INTO personajes VALUES (NULL, 'Clarck Kent','Superman',165,'infinita',120,182,1948, 'Reportero',2);
 INSERT INTO personajes VALUES (NULL, 'Dana Prince','Mujer Maravilla',160,'infinita',95,127,1949, 'Princesa Guerrera',2); 
 
 #realizar una selección de todos los atributos para corroborar que las tablas se encuentren completas#
 SELECT * FROM creador;
 SELECT * FROM personajes;
 
 

