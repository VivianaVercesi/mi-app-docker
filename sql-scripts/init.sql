USE app_db;
CREATE TABLE productos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  precio DECIMAL(10,2)
);

INSERT INTO productos (nombre, precio)
VALUES 
    ('Cuaderno A4', 2950.50),
    ('Bolígrafo azul', 300.00),
    ('Papel bond', 500.00),
    ('Carpeta de anillas', 3000.00),
    ('Lápiz HB', 1952.80),
    ('Regla 30 cm', 238.20),
    ('Marcadores de colores', 6500.00),
    ('Tijeras escolares', 4134.00),
    ('Goma de borrar', 250.50),
    ('Corrector líquido', 2900.00);
