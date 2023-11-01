-- Inserción con valor nulo en 'name'
INSERT INTO Product (name, product_types) VALUES (NULL, ARRAY['TypeA', 'TypeB']);

-- Inserción con array nulo en 'product_types'
INSERT INTO Product (name, product_types) VALUES ('Product A', NULL);

-- Inserción con tipo de dato incorrecto en 'product_types'
INSERT INTO Product (name, product_types) VALUES ('Product B', 'Tipo Incorrecto');

-- Inserción con valor no válido en el array 'product_types'
INSERT INTO Product (name, product_types) VALUES ('Product E', ARRAY['TipoE', 123]);

-- Inserción con array vacío en 'product_types'
INSERT INTO Product (name, product_types) VALUES ('Product F', ARRAY[]);
