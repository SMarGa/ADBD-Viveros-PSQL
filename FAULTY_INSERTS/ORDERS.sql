-- Inserción con client_id y plus_client_id nulos
INSERT INTO Orders (employee_id, client_id, plus_client_id, product_id, quantity, order_date) VALUES (2, NULL, NULL, 2, 3, '2023-02-20');

-- Inserción con product_id no existente en Product
INSERT INTO Orders (employee_id, client_id, plus_client_id, product_id, quantity, order_date) VALUES (3, 3, NULL, 100, 2, '2023-03-25');

-- Inserción con quantity negativo
INSERT INTO Orders (employee_id, client_id, plus_client_id, product_id, quantity, order_date) VALUES (4, 4, NULL, 4, -3, '2023-04-10');

-- Inserción con order_date nulo
INSERT INTO Orders (employee_id, client_id, plus_client_id, product_id, quantity, order_date) VALUES (5, 5, NULL, 5, 4, NULL);

-- Inserción con client_id y plus_client_id no nulos
INSERT INTO Orders (employee_id, client_id, plus_client_id, product_id, quantity, order_date) VALUES (7, 1, 1, 7, 3, '2023-06-15');

