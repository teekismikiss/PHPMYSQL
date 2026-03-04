# 📚 Proyecto PHP – Catálogo de Cómics Marvel

Aplicación web desarrollada en **PHP + MySQL** para mostrar información almacenada en una base de datos sobre tipos de cómics de Marvel.

El sistema permite visualizar, listar y gestionar los diferentes tipos de cómics (series regulares, miniseries, eventos, etc.) almacenados en MySQL.

---

## 🧩 Tipos de Cómics Soportados

El sistema maneja los siguientes tipos:

- Serie Regular  
- Serie Limitada  
- One-Shot  
- Anual  
- Novela Gráfica  
- Crossover  
- Evento  
- Reimpresión  

---

# 🚀 Tecnologías Utilizadas

- PHP 8+
- MySQL / MariaDB
- HTML5
- CSS3
- Bootstrap (opcional)
- Apache o Nginx

---

# 🗄️ Base de Datos

## 📌 Tabla: `tipos_comic`

```sql
CREATE TABLE tipos_comic (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);


```sql
CREATE TABLE tipos_comic (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

INSERT INTO tipos_comic (nombre, descripcion) VALUES
('Serie Regular', 'Publicacion continua sin limite definido de numeros.'),
('Serie Limitada', 'Historia con numero definido de entregas.'),
('One-Shot', 'Historia autoconclusiva publicada en un solo numero.'),
('Anual', 'Edicion especial publicada una vez al ano.'),
('Novela Grafica', 'Historia larga publicada en formato libro.'),
('Crossover', 'Historia que conecta multiples series o personajes.'),
('Evento', 'Gran historia que afecta a gran parte del universo Marvel.'),
('Reimpresion', 'Edicion que recopila numeros publicados anteriormente.');
```