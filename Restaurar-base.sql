RESTORE DATABASE [NombreBaseDestino]
FROM DISK = 'RUTA_COMPLETA_DEL_BACKUP.bak'
WITH 
    MOVE 'NombreLogicoData'
    TO 'RUTA_DESTINO\NombreBaseDestino.mdf',

    MOVE 'NombreLogicoLog'
    TO 'RUTA_DESTINO\NombreBaseDestino_log.ldf',

    REPLACE;
