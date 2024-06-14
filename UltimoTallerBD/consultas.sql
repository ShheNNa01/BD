--Consultas con INNER JOIN
SELECT 
    p.Nombre,
    p.Apellido,
    s.Domicilio AS DomicilioSucursal,
    a.FechaAtraco,
    a.ValorPromedio
FROM 
    Atraco a
INNER JOIN 
    PersonaDetenida p ON a.CodigoPersona = p.CodigoPersona
INNER JOIN 
    Sucursal s ON a.CodigoSucursal = s.CodigoSucursal;
GO



SELECT

	p.Nombre AS nombreatracador,
	p.Apellido,
	jz.Nombre AS nombrejuez,
	a.ValorPromedio,
	a.FechaAtraco,
	j.Condenado,
	j.TiempoCarcel
	

FROM Juicio j
INNER JOIN
			Juez jz ON j.ClaveJuzgado = jz.ClaveJuzgado
INNER JOIN
			Atraco a ON j.CodigoPersona = a.CodigoPersona
INNER JOIN	
			PersonaDetenida p ON a.CodigoPersona = p.CodigoPersona

WHERE j.Condenado = 1 AND j.TiempoCarcel >= 2

ORDER BY a.ValorPromedio DESC

-- Consultas con campos calculados

SELECT SUM(a.ValorPromedio) AS Totalrobado
FROM Atraco a

SELECT 
    CodigoVigilante,
    Edad,
    Edad + 5 AS EdadEnCincoAnios
FROM 
    Vigilante;
GO

SELECT 
		nombre,
		apellido, 
		CONCAT (nombre , ' ',apellido) AS Nombrecompleto

FROM PersonaDetenida;


SELECT 
		CONCAT (p.nombre,' ',p.apellido) AS Nombrecompleto

FROM PersonaDetenida P


SELECT
		CONCAT (P.Barrio,' - ',p.DireccionCasa) AS Direccion_Completa

FROM PersonaDetenida p

SELECT 
    CodigoSucursal,
    SUM(ValorPromedio) AS SumaValorPromedio
FROM 
    Atraco
GROUP BY 
    CodigoSucursal;
GO

SELECT 
    CodigoSucursal,
    COUNT(CodigoVigilante) AS NumeroVigilantesContratados
FROM 
    ContratacionVigilante
GROUP BY 
    CodigoSucursal;
GO

SELECT 
    AVG(Edad) AS PromedioEdadVigilantes
FROM 
    Vigilante;
GO

SELECT Edad , CodigoVigilante
FROM Vigilante


SELECT 
    MAX(ValorPromedio) AS MaximoValorPromedio,
    MIN(ValorPromedio) AS MinimoValorPromedio
FROM 
    Atraco;
GO

SELECT ValorPromedio
FROM Atraco



