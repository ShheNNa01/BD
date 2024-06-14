-- Usar la base de datos creada
USE SeguridadBancaria;
GO

-- Ingresar datos ficticios en la tabla EntidadBancaria
INSERT INTO EntidadBancaria (CodigoEntidad, DomicilioCentral) VALUES
(1, 'Calle Principal 123'),
(2, 'Avenida Secundaria 456'),
(3, 'Plaza Mayor 789'),
(4, 'Calle Falsa 101'),
(5, 'Avenida Siempre Viva 742');
GO

-- Ingresar datos ficticios en la tabla Sucursal
INSERT INTO Sucursal (CodigoSucursal, Domicilio, NumeroEmpleados, CodigoEntidad) VALUES
(101, 'Calle Primera 1', 10, 1),
(102, 'Calle Segunda 2', 15, 1),
(103, 'Calle Tercera 3', 20, 2),
(104, 'Calle Cuarta 4', 25, 2),
(105, 'Calle Quinta 5', 30, 3);
GO

-- Ingresar datos ficticios en la tabla Vigilante
INSERT INTO Vigilante (CodigoVigilante, Edad) VALUES

(201, 35),
(202, 40),
(203, 28),
(204, 50),
(205, 45);
GO

-- Ingresar datos ficticios en la tabla ContratacionVigilante
INSERT INTO ContratacionVigilante (CodigoSucursal, CodigoVigilante, FechaContratacion, ConArma) VALUES
(101, 202, '2023-06-01', 1),
(102, 203, '2023-06-02', 0),
(103, 204, '2023-06-03', 1),
(104, 205, '2023-06-04', 0),
(105, 201, '2023-06-05', 1);

(101, 201, '2023-01-01', 1),
(102, 202, '2023-01-02', 0),
(103, 203, '2023-01-03', 1),
(104, 204, '2023-01-04', 0),
(105, 205, '2023-01-05', 1);
GO

-- Ingresar datos ficticios en la tabla PersonaDetenida
INSERT INTO PersonaDetenida (CodigoPersona, Nombre, Apellido, Edad, DireccionCasa, Barrio) VALUES
(301, 'Juan', 'Perez', 30, 'Calle del Sol 123', 'Barrio Norte'),
(302, 'Maria', 'Gomez', 25, 'Calle Luna 456', 'Barrio Sur'),
(303, 'Pedro', 'Lopez', 40, 'Avenida Mar 789', 'Barrio Este'),
(304, 'Ana', 'Martinez', 35, 'Avenida Rio 101', 'Barrio Oeste'),
(305, 'Luis', 'Sanchez', 28, 'Plaza del Sol 742', 'Barrio Centro');
GO

-- Ingresar datos ficticios en la tabla BandaOrganizada
INSERT INTO BandaOrganizada (NumeroBanda, NumeroMiembros) VALUES
(401, 5),
(402, 8),
(403, 3),
(404, 10),
(405, 6);
GO

-- Ingresar datos ficticios en la tabla PertenenciaBanda
INSERT INTO PertenenciaBanda (CodigoPersona, NumeroBanda) VALUES
(301, 401),
(302, 402),
(303, 403),
(304, 404),
(305, 405);
GO

-- Ingresar datos ficticios en la tabla Atraco
INSERT INTO Atraco (CodigoPersona, CodigoSucursal, FechaAtraco, ValorPromedio) VALUES
(301, 102, '2023-03-01', 5500.00),
(302, 103, '2023-03-02', 6200.00),
(303, 104, '2023-03-03', 7300.00),
(304, 105, '2023-03-04', 8400.00),
(305, 101, '2023-03-05', 9600.00);
GO

-- Ingresar datos ficticios en la tabla Juez
INSERT INTO Juez (ClaveJuzgado, Nombre, AnosServicio) VALUES
(501, 'Carlos Ruiz', 15),
(502, 'Laura Fernandez', 20),
(503, 'Miguel Hernandez', 25),
(504, 'Jose Torres', 10),
(505, 'Lucia Ramirez', 30);
GO

-- Ingresar datos ficticios en la tabla Juicio
INSERT INTO Juicio (CodigoPersona, ClaveJuzgado, CodigoSucursal, FechaAtraco, Condenado, TiempoCarcel) VALUES
(301, 501, 101, '2023-02-01', 1, 5),
(302, 502, 102, '2023-02-02', 0, 0),
(303, 503, 103, '2023-02-03', 1, 7),
(304, 504, 104, '2023-02-04', 0, 0),
(305, 505, 105, '2023-02-05', 1, 10);
GO

