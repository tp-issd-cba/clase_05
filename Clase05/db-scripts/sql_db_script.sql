
CREATE TABLE rubros (
  id INT PRIMARY KEY IDENTITY(1,1),
  descripcion VARCHAR(255)
);

CREATE TABLE articulos (
  id INT PRIMARY KEY IDENTITY(1,1),
  descripcion VARCHAR(255),
  precio DECIMAL(10, 2),
  codigorubro INT,
  FOREIGN KEY (codigorubro) REFERENCES rubros(id)
);