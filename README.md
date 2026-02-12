# Restaurar-Base-de-datos
Query para restaurar bases de datos

Restore de base de datos desde archivo .bak 

Este script permite restaurar una base de datos a partir de un archivo de respaldo (.bak) en una instancia de SQL Server diferente a la original, como por ejemplo un entorno de desarrollo o pruebas.

Se utiliza la opción WITH MOVE para redirigir los archivos físicos de datos (.mdf) y log (.ldf) hacia rutas específicas del servidor destino. Esto es necesario cuando:

La restauración se realiza en otra instancia

Las rutas originales no existen

Se desea almacenar los archivos en un disco distinto

La opción REPLACE permite sobrescribir la base de datos si ya existe en la instancia.

⚠ Importante:
Antes de ejecutar el script, asegúrate de:

Especificar correctamente la ruta del archivo .bak

Crear previamente las carpetas destino

Verificar que el servicio de SQL Server tenga permisos sobre dichas rutas

Confirmar los nombres lógicos usando RESTORE FILELISTONLY
