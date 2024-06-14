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


CREATE PROCEDURE ObtenerPersonaDetenida
    @CodigoPersona INT
AS
BEGIN
    SELECT CodigoPersona, Nombre, Apellido, Edad, DireccionCasa, Barrio
    FROM PersonaDetenida
    WHERE CodigoPersona = @CodigoPersona;
END
GO

EXEC ObtenerPersonaDetenida
	@CodigoPersona = 306;
GO

CREATE PROCEDURE ActualizarPersonaDetenida
    @CodigoPersona INT,
    @Nombre NVARCHAR(100),
    @Apellido NVARCHAR(100),
    @Edad INT,
    @DireccionCasa NVARCHAR(255),
    @Barrio NVARCHAR(100)
AS
BEGIN
    UPDATE PersonaDetenida
    SET Nombre = @Nombre,
        Apellido = @Apellido,
        Edad = @Edad,
        DireccionCasa = @DireccionCasa,
        Barrio = @Barrio
    WHERE CodigoPersona = @CodigoPersona;
END
GO

EXEC ActualizarPersonaDetenida
	@CodigoPersona = 303,
	@Nombre = 'SOLO',
	@Apellido = 'HIJODELAGRANPUTA',
	@Edad = 10,
	@DireccionCasa = 'Calle del Sol 123',
	@Barrio = 'Barrio Norte';
GO


CREATE PROCEDURE EliminarPersonaDetenida
    @CodigoPersona INT
AS
BEGIN
    
    DELETE FROM PertenenciaBanda WHERE CodigoPersona = @CodigoPersona;
	DELETE FROM Juicio WHERE CodigoPersona = @CodigoPersona;
	DELETE FROM Atraco WHERE CodigoPersona = @CodigoPersona;
    DELETE FROM PersonaDetenida WHERE CodigoPersona = @CodigoPersona;
END
GO

EXEC EliminarPersonaDetenida
	@CodigoPersona = 303;
GO

