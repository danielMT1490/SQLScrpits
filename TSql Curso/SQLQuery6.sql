USE TutorialDB
CREATE TABLE Tabla05
 (empno INT CONSTRAINT Itabla05 PRIMARY KEY,
  nombre NVARCHAR(15),
  profesion NVARCHAR(19),
  fechaalta DATE,
  salario DECIMAL(10,2),
  num_segsocial INT CONSTRAINT Itabla051 UNIQUE CLUSTERED--es un unique mas compacto y más rapido de consultar para tablas con muchos datos.
  );
