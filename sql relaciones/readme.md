readme.md
-- Crear base de datos
CREATE DATABASE db_vuelos;
USE db_vuelos;

-- Tabla vuelos
CREATE TABLE vuelos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  tipo ENUM('nacional', 'europa', 'internacional') NOT NULL
);

-- Tabla compañía
CREATE TABLE compania (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  codigo VARCHAR(5) NOT NULL
);

-- Tabla relación
CREATE TABLE vuelos_compania (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_vuelo INT NOT NULL,
  id_compania INT NOT NULL,
  FOREIGN KEY (id_vuelo) REFERENCES vuelos(id),
  FOREIGN KEY (id_compania) REFERENCES compania(id),
  UNIQUE (id_vuelo, id_compania)
);

-- Insertar compañías
INSERT INTO compania (nombre, codigo) VALUES
  ('Iberia', 'IB'),
  ('Air Europa', 'AE'),
  ('Ryanair', 'FR'),
  ('Air France', 'AF');

-- Insertar vuelos con categoría corregida
INSERT INTO vuelos (nombre, tipo) VALUES
  ('Madrid', 'nacional'),
  ('Barcelona', 'nacional'),
  ('Bilbao', 'nacional'),
  ('Oviedo', 'nacional'),
  ('Paris', 'europa'),
  ('Dublin', 'europa'),
  ('Nueva York', 'internacional'),
  ('Nantes', 'europa'),
  ('Waterford', 'europa'),
  ('Uruguay', 'internacional');

-- Relación vuelos-compañía

-- Iberia: Oviedo, Madrid, Barcelona, Bilbao, Paris, Nueva York, Uruguay, Dublin
INSERT INTO vuelos_compania (id_vuelo, id_compania) VALUES
  (4, 1),  -- Oviedo - Iberia
  (1, 1),  -- Madrid - Iberia
  (2, 1),  -- Barcelona - Iberia
  (3, 1),  -- Bilbao - Iberia
  (5, 1),  -- Paris - Iberia
  (7, 1),  -- Nueva York - Iberia
  (10, 1), -- Uruguay - Iberia
  (6, 1);  -- Dublin - Iberia

-- Air France: Nantes, Madrid, Barcelona, Bilbao, Paris, Nueva York, Dublin
INSERT INTO vuelos_compania (id_vuelo, id_compania) VALUES
  (8, 4),  -- Nantes - Air France
  (1, 4),  -- Madrid - Air France
  (2, 4),  -- Barcelona - Air France
  (3, 4),  -- Bilbao - Air France
  (5, 4),  -- Paris - Air France
  (7, 4),  -- Nueva York - Air France
  (6, 4);  -- Dublin - Air France

-- Air Europa: Madrid, Barcelona, Bilbao, Paris, Nueva York, Uruguay, Dublin
INSERT INTO vuelos_compania (id_vuelo, id_compania) VALUES
  (1, 2),  -- Madrid - Air Europa
  (2, 2),  -- Barcelona - Air Europa
  (3, 2),  -- Bilbao - Air Europa
  (5, 2),  -- Paris - Air Europa
  (7, 2),  -- Nueva York - Air Europa
  (10, 2), -- Uruguay - Air Europa
  (6, 2);  -- Dublin - Air Europa

-- Ryanair: Madrid, Barcelona, Bilbao, Paris, Nantes, Dublin, Waterford
INSERT INTO vuelos_compania (id_vuelo, id_compania) VALUES
  (1, 3),  -- Madrid - Ryanair
  (2, 3),  -- Barcelona - Ryanair
  (3, 3),  -- Bilbao - Ryanair
  (5, 3),  -- Paris - Ryanair
  (8, 3),  -- Nantes - Ryanair
  (6, 3),  -- Dublin - Ryanair
  (9, 3);  -- Waterford - Ryanair