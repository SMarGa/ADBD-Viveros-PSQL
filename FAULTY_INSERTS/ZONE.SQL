-- Inserción con location nulo
INSERT INTO Zone (vivero_id, location) VALUES (1, NULL);

-- Inserción con vivero_id no existente en Vivero
INSERT INTO Zone (vivero_id, location) VALUES (100, '(30.789, 40.321)');

-- Inserción con tipo de dato incorrecto en 'location'
INSERT INTO Zone (vivero_id, location) VALUES (2, 'Ubicación incorrecta');

-- Inserción con coordenadas mal formateadas en 'location'
INSERT INTO Zone (vivero_id, location) VALUES (3, '(50.678, -60.123, 70.456)');
