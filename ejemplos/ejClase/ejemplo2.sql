-- Nombre del jefe con mayor numero de empleados

--SIN EDITAR LA SELECT ANTERIOR
SELECT
    NOMBRE
FROM
    (
        SELECT
            J.NOMBRE,
            COUNT(T.NOMBRE) "NUM EMPLEADOS"
        FROM
            TRABAJADOR T
            JOIN TRABAJADOR J
            ON J.TRABAJADOR_ID=T.JEFE_ID
        GROUP BY
            J.NOMBRE
        ORDER BY
            2
);

-- EDITANDO LA SELECT ANTERIOR
SELECT
    J.NOMBRE
FROM
    TRABAJADOR T
    JOIN TRABAJADOR J
    ON J.TRABAJADOR_ID=T.JEFE_ID
GROUP BY
    J.NOMBRE
ORDER BY
    COUNT(T.NOMBRE) DESC FETCH FIRST 1 ROW ONLY;