# CRUD NADINE   


- Crear base de datos con contenido de ejemplo a mano (AdminNeo)
    - si lo haces con chatgpt guarda los comandos
- archivo de lectura de datos w3schools MySQL Select Data

- Separar footer, header, elementos reutilizables








## Crear tabla
```sql
CREATE TABLE productos_pasteleria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    categoria ENUM('Tartas', 'Pasteles', 'Cupcakes', 'Galletas', 'Panadería', 'Bebidas', 'Otros') NOT NULL,
    
    precio DECIMAL(10,2) NOT NULL,
    
    foto VARCHAR(255),
    
    ingredientes TEXT,
    alergenos SET('Gluten', 'Huevo', 'Leche', 'Frutos secos', 'Soja', 'Sésamo', 'Lactosa', 'Cacahuetes') NOT NULL,
    
    disponible BOOLEAN DEFAULT TRUE,
    
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```


## Insertar datos en la tabla

```sql
INSERT INTO productos_pasteleria 
(nombre, descripcion, categoria, precio, foto, ingredientes, alergenos, disponible)
VALUES

('Tarta de Chocolate Clásica',
 'Bizcocho húmedo de chocolate con cobertura de ganache.',
 'Tartas', 22.50,
 'tarta_chocolate.jpg',
 'Harina, azúcar, cacao, huevos, mantequilla, nata',
 'Gluten,Huevo,Leche,Lactosa',
 TRUE),

('Tarta de Queso al Horno',
 'Tarta cremosa de queso con base de galleta.',
 'Tartas', 24.00,
 'tarta_queso.jpg',
 'Queso crema, azúcar, huevos, nata, galleta',
 'Gluten,Huevo,Leche,Lactosa',
 TRUE),

('Red Velvet',
 'Tarta esponjosa de cacao rojo con crema de queso.',
 'Tartas', 26.00,
 'red_velvet.jpg',
 'Harina, cacao, huevos, azúcar, mantequilla, queso crema',
 'Gluten,Huevo,Leche,Lactosa',
 TRUE),

('Pastel de Zanahoria',
 'Pastel especiado con nueces y frosting de queso.',
 'Pasteles', 4.50,
 'pastel_zanahoria.jpg',
 'Harina, zanahoria, azúcar, huevos, nueces',
 'Gluten,Huevo,Frutos secos',
 TRUE),

('Milhojas de Crema',
 'Capas crujientes de hojaldre con crema pastelera.',
 'Pasteles', 3.80,
 'milhojas.jpg',
 'Harina, mantequilla, leche, azúcar, huevos',
 'Gluten,Huevo,Leche,Lactosa',
 TRUE),

('Napolitana de Chocolate',
 'Hojaldre relleno de chocolate.',
 'Panadería', 2.20,
 'napolitana.jpg',
 'Harina, mantequilla, chocolate',
 'Gluten,Leche,Lactosa',
 TRUE),

('Croissant Artesano',
 'Croissant de mantequilla recién horneado.',
 'Panadería', 1.80,
 'croissant.jpg',
 'Harina, mantequilla, azúcar, levadura',
 'Gluten,Leche,Lactosa',
 TRUE),

('Cupcake de Vainilla',
 'Bizcocho individual con frosting de vainilla.',
 'Cupcakes', 2.90,
 'cupcake_vainilla.jpg',
 'Harina, azúcar, huevos, mantequilla',
 'Gluten,Huevo,Leche,Lactosa',
 TRUE),

('Cupcake de Oreo',
 'Cupcake de chocolate con topping de Oreo.',
 'Cupcakes', 3.20,
 'cupcake_oreo.jpg',
 'Harina, cacao, huevos, galleta Oreo',
 'Gluten,Huevo,Leche,Lactosa,Soja',
 TRUE),

('Galletas con Chips de Chocolate',
 'Galletas crujientes con trozos de chocolate.',
 'Galletas', 1.50,
 'galletas_choco.jpg',
 'Harina, azúcar, mantequilla, chocolate',
 'Gluten,Leche,Lactosa',
 TRUE),

('Galletas de Almendra',
 'Galletas suaves elaboradas con almendra molida.',
 'Galletas', 1.70,
 'galletas_almendra.jpg',
 'Almendra, azúcar, huevo',
 'Huevo,Frutos secos',
 TRUE),

('Brownie de Chocolate',
 'Brownie denso con nueces.',
 'Pasteles', 3.50,
 'brownie.jpg',
 'Chocolate, mantequilla, azúcar, huevos, nueces',
 'Huevo,Leche,Lactosa,Frutos secos',
 TRUE),

('Tarta Tres Leches',
 'Bizcocho empapado en mezcla de tres leches.',
 'Tartas', 25.00,
 'tres_leches.jpg',
 'Harina, leche evaporada, leche condensada, nata',
 'Gluten,Huevo,Leche,Lactosa',
 TRUE),

('Tarta de Limón',
 'Tarta fresca con crema de limón y merengue.',
 'Tartas', 23.00,
 'tarta_limon.jpg',
 'Harina, limón, azúcar, huevos',
 'Gluten,Huevo',
 TRUE),

('Éclair de Chocolate',
 'Pasta choux rellena de crema y cubierta de chocolate.',
 'Pasteles', 3.90,
 'eclair.jpg',
 'Harina, huevos, leche, chocolate',
 'Gluten,Huevo,Leche,Lactosa',
 TRUE),

('Donut Glaseado',
 'Donut clásico con glaseado de azúcar.',
 'Panadería', 1.60,
 'donut.jpg',
 'Harina, azúcar, leche, levadura',
 'Gluten,Leche,Lactosa',
 TRUE),

('Pan de Plátano',
 'Bizcocho húmedo de plátano y nueces.',
 'Panadería', 2.80,
 'pan_platano.jpg',
 'Harina, plátano, huevos, nueces',
 'Gluten,Huevo,Frutos secos',
 TRUE),

('Tarta Sacher',
 'Tarta de chocolate con mermelada de albaricoque.',
 'Tartas', 27.00,
 'sacher.jpg',
 'Chocolate, harina, huevos, mantequilla',
 'Gluten,Huevo,Leche,Lactosa',
 TRUE),

('Macarons Variados',
 'Macarons surtidos de distintos sabores.',
 'Otros', 1.90,
 'macarons.jpg',
 'Almendra molida, azúcar, claras de huevo',
 'Huevo,Frutos secos',
 TRUE),

('Batido de Fresa',
 'Batido natural de fresa con leche.',
 'Bebidas', 3.00,
 'batido_fresa.jpg',
 'Fresa, leche, azúcar',
 'Leche,Lactosa',
 TRUE),

('Café Latte',
 'Café espresso con leche vaporizada.',
 'Bebidas', 2.50,
 'latte.jpg',
 'Café, leche',
 'Leche,Lactosa',
 TRUE),

('Tarta Selva Negra',
 'Tarta de chocolate con cerezas y nata.',
 'Tartas', 28.00,
 'selva_negra.jpg',
 'Harina, cacao, cerezas, nata',
 'Gluten,Huevo,Leche,Lactosa',
 TRUE),

('Palmera de Chocolate',
 'Hojaldre crujiente cubierto de chocolate.',
 'Panadería', 2.40,
 'palmera.jpg',
 'Harina, mantequilla, chocolate',
 'Gluten,Leche,Lactosa',
 TRUE),

('Tarta Vegana de Manzana',
 'Tarta de manzana sin ingredientes de origen animal.',
 'Tartas', 21.00,
 'tarta_manzana_vegana.jpg',
 'Harina integral, manzana, azúcar moreno, aceite vegetal',
 'Gluten',
 TRUE),

('Infusión de Manzanilla',
 'Infusión caliente de flores de manzanilla.',
 'Bebidas', 1.80,
 'manzanilla.jpg',
 'Manzanilla',
 '',
 TRUE);
 ```