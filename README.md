# Crediya Authentication Database - Liquibase

Versionamiento de base de datos para Crediya usando Liquibase.

## Estructura

```
crediya-authentication-db/
├── liquibase.properties
└── db/
    └── changelog/
        ├── db.changelog-master.xml
        └── versions/
            └── v1.0.0/
                ├── 001-create-table-rol.sql
                ├── 002-create-table-usuario.sql
                └── 003-add-foreign-keys.sql
```

## Uso

```bash
# Actualizar base de datos
liquibase update

# Ver estado
liquibase status

# Validar
liquibase validate
```

## Configuración

Configurar variables de entorno:
```bash
export DB_USERNAME=crediya_user
export DB_PASSWORD=your_password
```
