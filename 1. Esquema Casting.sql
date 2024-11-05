CREATE TABLE Cliente (
Codigo INT PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL,
Direccion VARCHAR(255) NOT NULL,
Telefono VARCHAR(20) NOT NULL UNIQUE,
Contacto VARCHAR(100) NOT NULL,
TipoActividad VARCHAR(18) CHECK(TipoActividad IN('PUBLICIDAD Y CINE', 'MODA'))
);

CREATE TABLE Casting (
Codigo INT PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL UNIQUE,
Descripcion TEXT,
FechaContratacion DATE NOT NULL,
CodCliente INT NOT NULL,
Costo DECIMAL(10,2) NOT NULL,
TipoCasting VARCHAR(20) CHECK(TipoCasting IN ('PRESENCIAL','VIRTUAL')),
CONSTRAINT fk_casting_cliente FOREIGN KEY (CodCliente) REFERENCES Cliente(Codigo)
);

CREATE TABLE Agente (
Numero INT PRIMARY KEY,
DNI CHAR(9) NOT NULL UNIQUE,
Nombre VARCHAR(100) NOT NULL,
Direccion VARCHAR(255)
);

CREATE TABLE CastingPresencial(
CodCasting INT PRIMARY KEY,
TotalPersonas SMALLINT NOT NULL,
NumAgente INT NOT NULL,
CONSTRAINT fk_castingPresencial_CodCasting FOREIGN KEY (CodCasting) REFERENCES Casting(Codigo),
CONSTRAINT fk_castingPresencial_NumAgente FOREIGN KEY (NumAgente) REFERENCES Agente(Numero)
);


CREATE TABLE Candidato (
Codigo INT PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL,
Direccion VARCHAR(255) NOT NULL,
FechaNacimiento DATE NOT NULL CHECK(FechaNacimiento< CURRENT_DATE),
Telefono VARCHAR(20) NOT NULL UNIQUE,
Fotografia VARCHAR(300) NOT NULL,
TipoCandidato CHAR(1) NOT NULL CHECK(TipoCandidato IN ('A','N'))
);

CREATE TABLE Perfil (
CodCandidato INT PRIMARY KEY REFERENCES Candidato(Codigo),
Provincia VARCHAR(20) NOT NULL,
Sexo CHAR(1) NOT NULL CHECK(Sexo IN ('F', 'M')),
RangoAltura VARCHAR(7) NOT NULL CHECK(RangoAltura IN ('140-150', '151-160','161-170','171-180','181+')),
RangoEdad VARCHAR(4) NOT NULL CHECK(RangoEdad IN ('0-12','13-17','18-30','31-50','51+')),
ColorPelo VARCHAR(20) NOT NULL,
ColorOjos VARCHAR(20) NOT NULL,
Especialidad VARCHAR(6) NOT NULL CHECK(Especialidad IN ('MODELO','ACTOR')),
Experiencia CHAR(2) NOT NULL CHECK(Experiencia IN ('SI','NO'))
);

CREATE TABLE Representante (
NIF INT PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL,
Telefono VARCHAR(20) NOT NULL,
Direccion VARCHAR(255) NOT NULL, 
CodCandidato INT NOT NULL,
CONSTRAINT fk_Representante_CodCandidato FOREIGN KEY (CodCandidato) REFERENCES Candidato(Codigo)
)

CREATE TABLE CandidatoMenor (
CodCandidato INT PRIMARY KEY REFERENCES Candidato(Codigo),
NombreTutor VARCHAR(100) NOT NULL,
TipoTutor CHAR(1) NOT NULL CHECK (TipoTutor IN ('T','P','M'))
);


CREATE TABLE CandidatoAdulto (
CodCandidato INT PRIMARY KEY REFERENCES Candidato(Codigo),
DNI CHAR(9) NOT NULL UNIQUE
);
CREATE TABLE Fase (
Numero INT,
CodCasting INT,
FechaInicio DATE NOT NULL,
PRIMARY KEY (CodCasting, Numero),
CONSTRAINT fk_Fase_Casting FOREIGN KEY (CodCasting) REFERENCES Casting(Codigo)
);

CREATE TABLE Prueba (
Numero INT,
CodCasting INT,
NumFase INT,
Fecha DATE NOT NULL,
Sala VARCHAR(7) NOT NULL,
Descripcion VARCHAR(100) NOT NULL,
PRIMARY KEY (CodCasting,NumFase,Numero),
CONSTRAINT fk_Prueba_Fase FOREIGN KEY(CodCasting,NumFase) REFERENCES Fase (CodCasting, Numero)
);

CREATE TABLE CandidatoPrueba(
CodCasting INT,
NumFase INT,
NumPrueba INT,
CodCandidato INT,
Resultado SMALLINT CHECK(Resultado BETWEEN 0 AND 10),
PRIMARY KEY (CodCasting,NumFase,NumPrueba,CodCandidato),
CONSTRAINT fk_CandidatoPrueba_Candidato FOREIGN KEY (CodCandidato) REFERENCES Candidato(Codigo),
CONSTRAINT fk_CandidatoPrueba_Prueba FOREIGN KEY (CodCasting,NumFase,NumPrueba) 
	REFERENCES Prueba (CodCasting,NumFase,Numero)
);




