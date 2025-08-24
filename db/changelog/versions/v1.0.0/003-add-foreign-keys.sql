--liquibase formatted sql

--changeset crediya:003-add-foreign-keys
--comment: Agregar foreign keys para mantener integridad referencial

-- Agregar foreign key constraint entre usuario y rol
ALTER TABLE usuario
ADD CONSTRAINT fk_usuario_rol
FOREIGN KEY (id_rol) REFERENCES rol(id_rol)
ON DELETE RESTRICT
ON UPDATE CASCADE;

--rollback ALTER TABLE usuario DROP CONSTRAINT fk_usuario_rol;
