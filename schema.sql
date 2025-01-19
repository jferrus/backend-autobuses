CREATE TABLE IF NOT EXISTS paradas_linea_1 (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT,
  opcional BOOLEAN,
);

CREATE TABLE IF NOT EXISTS precios_linea_1 (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  punto_a INTEGER,
  punto_b INTEGER,
  precio FLOAT
);

INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Bicorp',true)
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Quesa',true)
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Navarrés',false)
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Bolbaite',false)
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Chella',false)
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Anna',false)
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Enguera',false)
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Estubeny',true)
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Játiva',false)
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Hospial Játiva', false);

INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (1,2, 1.35);
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (1,3, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (1,4, 1.55); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (1,5, 1.95); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (1,6, 2.25); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (1,7, 2.8); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (1,8, 3.15); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (1,9, 4.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (1,10, 4.65); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (2,3, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (2,4, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (2,5, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (2,6, 1.55); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (2,7, 2.15); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (2,8, 2.5); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (2,9, 3.65); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (2,10, 4); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (3,4, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (3,5, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (3,6, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (3,7, 1.65); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (3,8, 2); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (3,9, 3.2); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (3,10, 3.55); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (4,5, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (4,6, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (4,7, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (4,8, 1.5); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (4,9, 2.7); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (4,10, 3.05); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (5,6, 1.35);
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (5,7, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (5,8, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (5,9, 2.4); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (5,10, 2.7); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (6,7, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (6,8, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (6,9, 1.55); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (6,10, 1.85); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (7,8, 1.45); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (7,9, 1.9); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (7,10, 2.25); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (8,9, 1.35); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (8,10, 1.55); 
INSERT INTO paradas_linea_1 (punto_a, punto_b, precio) VALUES (9,10, 1.35)