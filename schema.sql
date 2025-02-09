CREATE TABLE IF NOT EXISTS paradas_linea_1 (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT,
  opcional BOOLEAN
);

CREATE TABLE IF NOT EXISTS precios_linea_1 (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  punto_a INTEGER,
  punto_b INTEGER,
  precio FLOAT
);

CREATE TABLE IF NOT EXISTS horarios_linea_1 (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  origen INTEGER,
  direccion INTEGER,
  salida TIME,
  trayecto INTEGER
);

CREATE TABLE IF NOT EXISTS paradas_linea_2 (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre TEXT,
  opcional BOOLEAN
);

CREATE TABLE IF NOT EXISTS precios_linea_2 (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  punto_a INTEGER,
  punto_b INTEGER,
  precio FLOAT
);

CREATE TABLE IF NOT EXISTS horarios_linea_2 (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  origen INTEGER,
  direccion INTEGER,
  salida TIME,
  trayecto INTEGER
);

-- Línea 1

INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Bicorp',true);
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Quesa',true);
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Navarrés',false);
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Bolbaite',false);
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Chella',false);
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Anna',false);
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Enguera',false);
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Estubeny',true);
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Xàtiva',false);
INSERT INTO paradas_linea_1 (nombre, opcional) VALUES ('Hospital Xàtiva', false);

INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (1,2, 1.35);
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (1,3, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (1,4, 1.55); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (1,5, 1.95); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (1,6, 2.25); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (1,7, 2.8); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (1,8, 3.15); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (1,9, 4.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (1,10, 4.65); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (2,3, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (2,4, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (2,5, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (2,6, 1.55); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (2,7, 2.15); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (2,8, 2.5); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (2,9, 3.65); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (2,10, 4); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (3,4, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (3,5, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (3,6, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (3,7, 1.65); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (3,8, 2); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (3,9, 3.2); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (3,10, 3.55); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (4,5, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (4,6, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (4,7, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (4,8, 1.5); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (4,9, 2.7); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (4,10, 3.05); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (5,6, 1.35);
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (5,7, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (5,8, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (5,9, 2.4); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (5,10, 2.7); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (6,7, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (6,8, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (6,9, 1.55); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (6,10, 1.85); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (7,8, 1.45); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (7,9, 1.9); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (7,10, 2.25); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (8,9, 1.35); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (8,10, 1.55); 
INSERT INTO precios_linea_1 (punto_a, punto_b, precio) VALUES (9,10, 1.35);


INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (1, 10, '05:50:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (1, 10, '07:30:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (1, 10, '13:00:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (1, 10, '16:07:00', 6);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (2, 10, '06:02:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (2, 10, '07:42:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (2, 10, '13:12:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (2, 10, '16:19:00', 6);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (3, 10, '06:12:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (3, 10, '07:55:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (3, 10, '10:15:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (3, 10, '13:22:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (3, 10, '16:29:00', 6);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (4, 10, '06:22:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (4, 10, '08:02:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (4, 10, '10:25:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (4, 10, '13:32:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (4, 10, '16:39:00', 6);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (5, 10, '06:27:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (5, 10, '08:09:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (5, 10, '10:32:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (5, 10, '13:39:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (5, 10, '16:46:00', 6);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (6, 10, '06:34:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (6, 10, '08:14:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (6, 10, '10:37:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (6, 10, '13:44:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (6, 10, '16:51:00', 6);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (7, 10, '06:44:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (7, 10, '07:37:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (7, 10, '08:24:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (7, 10, '10:47:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (7, 10, '13:54:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (7, 10, '17:01:00', 6);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (8, 10, '06:52:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (8, 10, '07:45:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (8, 10, '08:32:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (8, 10, '10:55:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (8, 10, '14:02:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (8, 10, '17:09:00', 6);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (9, 10, '07:00:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (9, 10, '08:00:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (9, 10, '08:47:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (9, 10, '11:10:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (9, 10, '14:17:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (9, 10, '17:24:00', 6);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (10, 10, '08:15:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (10, 10, '09:02:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (10, 10, '11:25:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (10, 10, '14:32:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (10, 1, '09:02:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (10, 1, '11:25:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (10, 1, '14:35:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (9, 1, '07:07:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (9, 1, '09:17:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (9, 1, '11:40:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (9, 1, '14:50:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (9, 1, '18:00:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (8, 1, '07:23:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (8, 1, '09:32:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (8, 1, '15:05:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (8, 1, '18:15:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (7, 1, '07:37:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (7, 1, '09:40:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (7, 1, '12:03:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (7, 1, '15:13:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (7, 1, '18:23:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (6, 1, '07:27:00', 1);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (6, 1, '09:50:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (6, 1, '12:13:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (6, 1, '15:23:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (6, 1, '18:33:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (5, 1, '09:55:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (5, 1, '12:18:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (5, 1, '15:28:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (5, 1, '18:38:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (4, 1, '10:02:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (4, 1, '12:25:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (4, 1, '15:35:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (4, 1, '18:45:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (3, 1, '10:12:00', 2);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (3, 1, '12:35:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (3, 1, '15:45:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (3, 1, '18:55:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (2, 1, '12:45:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (2, 1, '15:55:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (2, 1, '19:05:00', 5);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (1, 1, '12:57:00', 3);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (1, 1, '16:07:00', 4);
INSERT INTO horarios_linea_1 (origen, direccion, salida, trayecto) VALUES (1, 1, '19:17:00', 5);

------------ Línea 2

INSERT INTO paradas_linea_2 (nombre, opcional) VALUES ('Sumacarcer',true);
INSERT INTO paradas_linea_2 (nombre, opcional) VALUES ('Sellent',true);
INSERT INTO paradas_linea_2 (nombre, opcional) VALUES ('Cotes',true);
INSERT INTO paradas_linea_2 (nombre, opcional) VALUES ('Càrcer',false);
INSERT INTO paradas_linea_2 (nombre, opcional) VALUES ('Alcantera de Xùquer',false);
INSERT INTO paradas_linea_2 (nombre, opcional) VALUES ('Beneixida',false);
INSERT INTO paradas_linea_2 (nombre, opcional) VALUES ('Castelló',false);
INSERT INTO paradas_linea_2 (nombre, opcional) VALUES ('Senyera',false);
INSERT INTO paradas_linea_2 (nombre, opcional) VALUES ('Manuel',false);
INSERT INTO paradas_linea_2 (nombre, opcional) VALUES ('Hospital Xàtiva',false);
INSERT INTO paradas_linea_2 (nombre, opcional) VALUES ('Xàtiva',false);

INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (1, 11, '07:35:00', 1);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (1, 11, '09:36:00', 3);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (1, 11, '13:11:00', 4);

INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (2, 11, '07:45:00', 1);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (2, 11, '09:41:00', 3);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (2, 11, '13:16:00', 4);

INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (3, 11, '07:52:00', 1);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (3, 11, '09:48:00', 3);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (3, 11, '13:23:00', 4);

INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (4, 11, '07:55:00', 1);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (4, 11, '08:53:00', 2);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (4, 11, '09:51:00', 3);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (4, 11, '13:26:00', 4);

INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (5, 11, '07:55:00', 1);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (5, 11, '08:53:00', 2);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (5, 11, '09:51:00', 3);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (5, 11, '13:26:00', 4);

INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (6, 11, '08:00:00', 1);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (6, 11, '08:58:00', 2);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (6, 11, '09:56:00', 3);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (6, 11, '13:31:00', 4);

INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (7, 11, '08:09:00', 1);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (7, 11, '09:06:00', 2);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (7, 11, '10:04:00', 3);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (7, 11, '13:39:00', 4);

INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (8, 11, '08:13:00', 1);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (8, 11, '09:11:00', 2);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (8, 11, '10:09:00', 3);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (8, 11, '13:44:00', 4);

INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (9, 11, '08:18:00', 1);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (9, 11, '09:16:00', 2);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (9, 11, '10:14:00', 3);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (9, 11, '13:49:00', 4);

INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (10, 11, '08:26:00', 1);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (10, 11, '09:24:00', 2);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (10, 11, '10:22:00', 3);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (10, 11, '13:57:00', 4);

INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (11, 11, '08:36:00', 1);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (11, 11, '09:34:00', 2);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (11, 11, '10:32:00', 3);
INSERT INTO horarios_linea_2 (origen, direccion, salida, trayecto) VALUES (11, 11, '14:07:00', 4);


INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (1, 2, 0.0);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (1, 3, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (1, 4, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (1, 5, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (1, 6, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (1, 7, 1.50);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (1, 8, 1.70);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (1, 9, 1.95);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (1, 10, 2.50);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (1, 11, 2.80);

INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (2, 3, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (2, 4, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (2, 5, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (2, 6, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (2, 7, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (2, 8, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (2, 9, 1.60);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (2, 10, 2.20);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (2, 11, 2.50);

INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (3, 4, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (3, 5, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (3, 6, 1.35;
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (3, 7, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (3, 8, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (3, 9, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (3, 10, 1.70);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (3, 11, 2.00);

INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (4, 5, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (4, 6, 1.35;
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (4, 7, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (4, 8, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (4, 9, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (4, 10, 1.60);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (4, 11, 1.90);

INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (5, 6, 1.35;
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (5, 7, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (5, 8, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (5, 9, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (5, 10, 1.55);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (5, 11, 1.85);

INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (6, 7, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (6, 8, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (6, 9, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (6, 10, 1.40);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (6, 11, 1.70);

INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (7, 8, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (7, 9, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (7, 10, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (7, 11, 1.35);

INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (8, 9, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (8, 10, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (8, 11, 1.35);

INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (9, 10, 1.35);
INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (9, 11, 1.35);

INSERT INTO precios_linea_2 (punto_a, punto_b, precio) VALUES (10, 11, 1.35);