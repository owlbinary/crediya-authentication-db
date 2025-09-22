--liquibase formatted sql

--changeset crediya:004-insert-roles
--comment: Inserta usuario admin

-- Insertar administrador
INSERT INTO usuario (nombre,apellido,email,contrasena,direccion,documento_identidad,telefono,id_rol,salario_base,fecha_creacion,fecha_actualizacion) VALUES
	 ('Admin','Sistema','admin@admin.com','$2a$10$SbL8XDJg1f60wZXQ9NRJNeMYE0WDUXtXcGpFvxhgXxWYtYQkXxzPa','Calle 55 10 10','12345678','3001234567',1,2000008.00,'2025-08-24 16:49:03.240253','2025-08-24 16:49:03.240253');

