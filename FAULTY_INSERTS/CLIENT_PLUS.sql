-- Inserción en TenerifePlus con email no válido
INSERT INTO TenerifePlus (name, last_name_1, last_name_2, email, registration_date) VALUES ('Cliente2', 'Apellido1', 'Apellido2', 'correo_invalido', '2023-01-20');

-- Inserción en TenerifePlus con last_name_1 nulo
INSERT INTO TenerifePlus (name, last_name_1, last_name_2, email, registration_date) VALUES ('Cliente4', NULL, 'Apellido2', 'cliente4@example.com', '2023-02-15');

-- Inserción en TenerifePlus con registration_date nulo
INSERT INTO TenerifePlus (name, last_name_1, last_name_2, email, registration_date) VALUES ('Cliente7', 'Apellido1', 'Apellido2', 'cliente7@example.com', NULL);

-- Inserción en TenerifePlus con registration_date en el futuro
INSERT INTO TenerifePlus (name, last_name_1, last_name_2, email, registration_date) VALUES ('Cliente8', 'Apellido1', 'Apellido2', 'cliente8@example.com', '2028-01-01');
