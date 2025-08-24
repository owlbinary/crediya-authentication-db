--liquibase formatted sql

--changeset crediya:001-create-table-rol
--comment: Crear tabla rol para el sistema de roles de usuarios

CREATE TABLE rol (
    id_rol BIGSERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion VARCHAR(255),
    activo BOOLEAN NOT NULL DEFAULT true,
    fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fecha_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Crear índices para optimizar consultas
CREATE INDEX idx_rol_nombre ON rol(nombre);
CREATE INDEX idx_rol_activo ON rol(activo);

--rollback DROP TABLE rol CASCADE;
