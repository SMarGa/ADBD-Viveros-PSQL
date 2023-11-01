-- Inserción con product_id nulo
INSERT INTO Product_Vivero (product_id, vivero_id, stock) VALUES (NULL, 1, 10);

-- Inserción con vivero_id nulo
INSERT INTO Product_Vivero (product_id, vivero_id, stock) VALUES (2, NULL, 5);

-- Inserción con stock negativo
INSERT INTO Product_Vivero (product_id, vivero_id, stock) VALUES (3, 3, -3);

-- Inserción con product_id no existente en Product
INSERT INTO Product_Vivero (product_id, vivero_id, stock) VALUES (100, 4, 8);

-- Inserción con vivero_id no existente en Vivero
INSERT INTO Product_Vivero (product_id, vivero_id, stock) VALUES (5, 200, 12);

-- Inserción con stock null (columna no permite nulos)
INSERT INTO Product_Vivero (product_id, vivero_id, stock) VALUES (8, 8, NULL);
