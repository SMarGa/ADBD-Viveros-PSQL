
-- Inserción con name nulo
INSERT INTO Employee (zone_id, name, hire_date) VALUES (1, NULL, '2023-02-20');

-- Inserción con hire_date nulo
INSERT INTO Employee (zone_id, name, hire_date) VALUES (2, 'Empleado B', NULL);

-- Inserción con zone_id no existente en Zone
INSERT INTO Employee (zone_id, name, hire_date) VALUES (100, 'Empleado C', '2023-03-25');

-- Inserción con tipo de dato incorrecto en 'hire_date'
INSERT INTO Employee (zone_id, name, hire_date) VALUES (3, 'Empleado D', 'Fecha incorrecta');


