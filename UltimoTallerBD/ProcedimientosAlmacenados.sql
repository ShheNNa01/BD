-- Procedimientos almacenados sql

CREATE PROCEDURE InsertarPersonaDetenida
    @CodigoPersona INT,
    @Nombre NVARCHAR(100),
    @Apellido NVARCHAR(100),
    @Edad INT,
    @DireccionCasa NVARCHAR(255),
    @Barrio NVARCHAR(100)
AS
BEGIN
    INSERT INTO PersonaDetenida (CodigoPersona, Nombre, Apellido, Edad, DireccionCasa, Barrio)
    VALUES (@CodigoPersona, @Nombre, @Apellido, @Edad, @DireccionCasa, @Barrio);
END
GO


EXEC InsertarPersonaDetenida
    @CodigoPersona = 306,
    @Nombre = 'Carlos',
    @Apellido = 'Diaz',
    @Edad = 32,
    @DireccionCasa = 'Calle Nueva 123',
    @Barrio = 'Barrio Norte';
GO



