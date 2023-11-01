-- Inserción con valor nulo en 'name' 
INSERT INTO Vivero (name, location) VALUES (NULL, '(10.123, 20.456)');

-- Inserción con tipo de dato incorrecto en 'location'
INSERT INTO Vivero (name, location) VALUES ('Vivero A', 'Ubicación incorrecta');

-- Inserción con coordenadas mal formateadas en 'location'
INSERT INTO Vivero (name, location) VALUES ('Vivero B', '(50.678, -60.123, 70.456)');