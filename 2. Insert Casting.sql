-- Crear datos para la tabla Cliente
INSERT INTO Cliente (Codigo, Nombre, Direccion, Telefono, Contacto, TipoActividad) VALUES
(1, 'Carlos Santana', 'Calle Principal 123', '555-1234', 'Laura Martínez', 'PUBLICIDAD Y CINE'),
(2, 'Gabriela García', 'Av. Independencia 456', '555-5678', 'Juan Pérez', 'MODA'),
(3, 'Diego Rivera', 'Av. Libertad 123', '555-3333', 'Frida Kahlo', 'PUBLICIDAD Y CINE'),
(4, 'Salma Hayek', 'Av. Costera 456', '555-9876', 'Guillermo del Toro', 'MODA'),
(5, 'Shakira Mebarak', 'Carrera 45 N° 23', '555-1111', 'Carlos Vives', 'MODA'),
(6, 'Enrique Iglesias', 'Avenida Central 101', '555-4444', 'Alejandro Sanz', 'PUBLICIDAD Y CINE'),
(7, 'Penelope Cruz', 'Calle Famosos 999', '555-5555', 'Pedro Almodóvar', 'MODA');

-- Crear datos para la tabla Agente
INSERT INTO Agente (Numero, DNI, Nombre, Direccion) VALUES
(1, '123456789', 'Agente Uno', '123 Main St'),
(2, '987654321', 'Agente Dos', '456 Oak St'),
(3, '567891234', 'Agente Tres', '789 Pine St'),
(4, '456123789', 'Agente Cuatro', '321 Birch St'),
(5, '321654987', 'Agente Cinco', '654 Elm St'),
(6, '654987321', 'Agente Seis', '987 Maple St'),
(7, '789456123', 'Agente Siete', '159 Cedar St');

-- Crear datos para la tabla Casting
INSERT INTO Casting (Codigo, Nombre, Descripcion, FechaContratacion, CodCliente, Costo, TipoCasting) VALUES
(1, 'Comercial de Bebidas', 'Casting para comercial de bebidas', '2023-01-15', 1, 5000.00, 'PRESENCIAL'),
(2, 'Campaña de Moda', 'Casting para una campaña de moda', '2023-02-20', 2, 7000.00, 'VIRTUAL'),
(3, 'Video Musical', 'Casting para un video musical', '2023-03-10', 3, 3500.00, 'PRESENCIAL'),
(4, 'Publicidad Cine', 'Casting para publicidad de cine', '2023-04-05', 4, 8000.00, 'VIRTUAL'),
(5, 'Anuncio TV', 'Casting para anuncio de TV', '2023-05-15', 5, 6000.00, 'PRESENCIAL'),
(6, 'Evento Moda', 'Casting para evento de moda', '2023-06-12', 6, 4500.00, 'PRESENCIAL'),
(7, 'Festival de Cine', 'Casting para festival de cine', '2023-07-01', 7, 9000.00, 'VIRTUAL');

-- Crear datos para la tabla CastingPresencial
INSERT INTO CastingPresencial (CodCasting, TotalPersonas, NumAgente) VALUES
(1, 50, 1),
(2, 30, 2),
(3, 45, 3),
(4, 60, 4),
(5, 35, 5),
(6, 40, 6),
(7, 70, 7);

-- Crear datos para la tabla Candidato
INSERT INTO Candidato (Codigo, Nombre, Direccion, FechaNacimiento, Telefono, Fotografia, TipoCandidato) VALUES
(1, 'María López', 'Calle Nueva 101', '1995-07-15', '555-1010', 'foto1.jpg', 'A'),
(2, 'Pedro González', 'Av. Paz 202', '2000-04-23', '555-2020', 'foto2.jpg', 'A'),
(3, 'Ana Torres', 'Bulevar Arte 303', '1998-11-30', '555-3030', 'foto3.jpg', 'A'),
(4, 'Juan Ramos', 'Calle Esquina 404', '1992-06-12', '555-4040', 'foto4.jpg', 'A'),
(5, 'Lucía Pérez', 'Pasaje Central 505', '2003-03-21', '555-5050', 'foto5.jpg', 'N'),
(6, 'Felipe Gómez', 'Calle Vieja 606', '2005-12-08', '555-6060', 'foto6.jpg', 'N'),
(7, 'Elena Martínez', 'Avenida Sol 707', '1990-01-01', '555-7070', 'foto7.jpg', 'A');

-- Crear datos para la tabla Perfil
INSERT INTO Perfil (CodCandidato, Provincia, Sexo, RangoAltura, RangoEdad, ColorPelo, ColorOjos, Especialidad, Experiencia) VALUES
(1, 'Provincia A', 'F', '161-170', '51+', 'Negro', 'Marrón', 'ACTOR', 'SI'),
(2, 'Provincia B', 'M', '171-180', '51+', 'Castaño', 'Azul', 'MODELO', 'SI'),
(3, 'Provincia C', 'F', '151-160', '51+', 'Rubio', 'Verde', 'ACTOR', 'NO'),
(4, 'Provincia D', 'M', '181+', '51+', 'Negro', 'Negro', 'MODELO', 'SI'),
(5, 'Provincia E', 'F', '140-150', '0-12', 'Castaño', 'Café', 'MODELO', 'NO'),
(6, 'Provincia F', 'M', '151-160', '0-12', 'Negro', 'Azul', 'ACTOR', 'NO'),
(7, 'Provincia G', 'F', '171-180', '51+', 'Rubio', 'Verde', 'MODELO', 'SI');

-- Crear datos para la tabla Representante
INSERT INTO Representante (NIF, Nombre, Telefono, Direccion, CodCandidato) VALUES
(1, 'Ricardo Salinas', '555-8000', 'Av. Esperanza 100', 5),
(2, 'Laura García', '555-9000', 'Calle Sueños 200', 6),
(3, 'Martín Castro', '555-1001', 'Av. Paz 300', 5),
(4, 'Sofía López', '555-2001', 'Pasaje Alegría 400', 6),
(5, 'Carlos Ruiz', '555-3001', 'Bulevar Esperanza 500', 5),
(6, 'María Torres', '555-4001', 'Av. Armonía 600', 6),
(7, 'Pedro Sánchez', '555-5001', 'Calle Lluvia 700', 5);

-- Crear datos para la tabla CandidatoMenor
INSERT INTO CandidatoMenor (CodCandidato, NombreTutor, TipoTutor) VALUES
(5, 'Ricardo Salinas', 'P'),
(6, 'Laura García', 'T'),
(7, 'Martín Castro', 'M');

-- Crear datos para la tabla CandidatoAdulto
INSERT INTO CandidatoAdulto (CodCandidato, DNI) VALUES
(1, '111222333'),
(2, '444555666'),
(3, '777888999'),
(4, '123456789'),
(5, '987654321'),
(6, '654321987'),
(7, '321987654');

-- Crear datos para la tabla Fase
INSERT INTO Fase (Numero, CodCasting, FechaInicio) VALUES
(1, 1, '2023-01-10'),
(2, 1, '2023-01-20'),
(1, 2, '2023-02-10'),
(2, 2, '2023-02-20'),
(1, 3, '2023-03-05'),
(2, 3, '2023-03-15'),
(1, 4, '2023-04-10');

-- Crear datos para la tabla Prueba
INSERT INTO Prueba (Numero, CodCasting, NumFase, Fecha, Sala, Descripcion) VALUES
(1, 1, 1, '2023-01-11', 'Sala 1', 'Prueba inicial de casting'),
(2, 1, 1, '2023-01-12', 'Sala 2', 'Prueba secundaria de casting'),
(1, 2, 1, '2023-02-11', 'Sala 3', 'Primera prueba de moda'),
(2, 2, 2, '2023-02-20', 'Sala 4', 'Prueba final de moda'),
(1, 3, 1, '2023-03-11', 'Sala 1', 'Prueba inicial de video musical'),
(2, 3, 2, '2023-03-15', 'Sala 5', 'Prueba final de video musical'),
(1, 4, 1, '2023-04-10', 'Sala 2', 'Prueba inicial de publicidad');

-- Crear datos para la tabla CandidatoPrueba
INSERT INTO CandidatoPrueba (CodCasting, NumFase, NumPrueba, CodCandidato, Resultado) VALUES
(1, 1, 1, 1, 8),
(1, 1, 2, 2, 7),
(2, 1, 1, 3, 9),
(2, 2, 2, 4, 10),
(3, 1, 1, 5, 6),
(3, 2, 2, 6, 8),
(4, 1, 1, 7, 7);
