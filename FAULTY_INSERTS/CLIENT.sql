-- Inserción en Client con email no válido
INSERT INTO Client (name, last_name_1, last_name_2, email) VALUES ('Cliente1', 'Apellido1', 'Apellido2', 'correo_invalido');

-- Inserción en Client con last_name_1 nulo
INSERT INTO Client (name, last_name_1, last_name_2, email) VALUES ('Cliente3', NULL, 'Apellido2', 'cliente3@example.com');

