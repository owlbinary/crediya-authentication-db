--liquibase formatted sql

--changeset crediya:002-create-table-usuario
--comment: Crear tabla usuario para el sistema de autenticación

CREATE TABLE usuario (
    id_usuario BIGSERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    documento_identidad VARCHAR(15),
    telefono VARCHAR(20),
    id_rol BIGINT NOT NULL,
    salario_base DECIMAL(12,2) NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Crear índices para optimizar consultas
CREATE INDEX idx_usuario_email ON usuario(email);
CREATE INDEX idx_usuario_documento_identidad ON usuario(documento_identidad);
CREATE INDEX idx_usuario_id_rol ON usuario(id_rol);

--rollback DROP TABLE usuario CASCADE;
