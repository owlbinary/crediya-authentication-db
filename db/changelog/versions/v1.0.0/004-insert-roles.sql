--liquibase formatted sql

--changeset crediya:004-insert-roles
--comment: Insertar roles básicos del sistema

-- Insertar roles básicos del sistema
INSERT INTO rol (nombre, descripcion) VALUES
    ('ADMIN', 'Administrador'),
    ('ASESOR', 'Asesor'),
    ('CLIENTE', 'Cliente');
