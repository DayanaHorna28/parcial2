CREATE TABLE libros (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(100),
  autor VARCHAR(100)
);

INSERT INTO libros (titulo, autor) VALUES
('El Principito', 'Antoine de Saint-Exupéry'),
('Cien Años de Soledad', 'Gabriel García Márquez');

CREATE TABLE prestamos (
  id SERIAL PRIMARY KEY,
  libro_id INT REFERENCES libros(id),
  usuario VARCHAR(100),
  fecha TIMESTAMP
);
