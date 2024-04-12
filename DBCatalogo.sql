CREATE DATABASE DBCatalogo;

USE DBCatalogo;

CREATE TABLE Usuario (
    IdUsuario INT PRIMARY KEY NOT NULL,
    CodUsuario VARCHAR(50) NOT NULL,
    Clave BINARY(50) NOT NULL,
    Nombres VARCHAR(50) NOT NULL,
	IdRol INT NOT NULL, 
	FOREIGN KEY (IdRol) REFERENCES Rol(IdRol)
);
CREATE TABLE Stock (
    IdProducto INT PRIMARY KEY FOREIGN KEY REFERENCES Producto(IdProducto),
    Stockltems INT NOT NULL,
    PuntoRepo INT NULL,
	PrecioVenta DECIMAL(18,2) NULL,
    IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
);
CREATE TABLE Rol (
    IdRol INT PRIMARY KEY NOT NULL,
    DesRol VARCHAR(80) NOT NULL
);
CREATE TABLE Producto (
    IdProducto INT PRIMARY KEY NOT NULL,
    IdCategoria INT FOREIGN KEY REFERENCES Categoria(IdCategoria),
    NomProducto VARCHAR(120) NOT NULL,
    MarcaProducto VARCHAR(120) NOT NULL,
    ModeloProducto VARCHAR(120) NOT NULL,
    LineaProducto VARCHAR(120) NOT NULL,
    GarantiaProducto VARCHAR(50) NULL,
    Precio DECIMAL(18,2) NULL,
    Imagen IMAGE NULL
);
CREATE TABLE Categoria (
    IdCategoria INT PRIMARY KEY NOT NULL,
    DescCategoria VARCHAR(100) NOT NULL
);