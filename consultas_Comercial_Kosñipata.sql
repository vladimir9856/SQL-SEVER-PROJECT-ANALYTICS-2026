--CONSULTA ORIGINAL, SI BIEN ESTO MEDA DETALLADAMENTE INFORMACIION DELAS ENTREGAS DURANTE (2024,2025,2026)
--PERO EL DETALLE ESQUE ESTE ME DA EN FORMATO ANCHO (OSEA ME CREA 36 COLUMNAS DE ENTREGAS LO CUAL ES LA MEJOR ESTRUCTURA PARA HACER EL ANALISIS EN SQL)
 SELECT


    AA.cpID_Productor,

    LEFT(
        RTRIM(AA.cpApePaternProduc) + ' ' +
        RTRIM(AA.cpApeMaterProduc) + ' ' +
        RTRIM(AA.cpNombresProduc),
        40
    ) AS nombre,

    AA.cpID_UnidadOperativa,
    BB.cpDescriUnidOpera,

    CC.cpID_RepresProductor,

    LEFT(
        RTRIM(CC.cpApePateReprePro) + ' ' +
        RTRIM(CC.cpApeMateReprePro) + ' ' +
        RTRIM(CC.cpNombresReprePro),
        40
    ) AS repre,

    CC.cpDNIRepreProd,

    AA.cpID_Ubigeo,
    DD.cpDescripUbigeo,

    CC.cpbase,
    EE.cpdescripcion AS BaseDescripcion,

    CC.cpsector,
    FF.cpdescripcion AS SectorDescripcion,

    /* =====================================================
       2024
       ===================================================== */

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 1
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_01,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 2
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_02,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 3
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_03,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 4
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_04,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 5
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_05,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 6
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_06,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 7
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_07,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 8
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_08,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 9
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_09,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 10
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_10,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 11
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_11,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
             AND MONTH(CP.cpFechaCompCompra) = 12
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2024_12,

    /* =====================================================
       2025
       ===================================================== */

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 1
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_01,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 2
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_02,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 3
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_03,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 4
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_04,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 5
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_05,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 6
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_06,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 7
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_07,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 8
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_08,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 9
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_09,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 10
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_10,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 11
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_11,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
             AND MONTH(CP.cpFechaCompCompra) = 12
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2025_12,

    /* =====================================================
       2026
       ===================================================== */

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 1
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2026_01,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 2
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2026_02,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 3
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2026_03,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 4
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2026_04,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 5
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2026_05,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 6
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2026_06,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 7
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2026_07,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 8
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2026_08,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 9
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2026_09,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 10
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2026_10,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 11
            THEN IT.cpPesNetIteComCMP  * 0.46
            ELSE 0
        END
    ) AS Kilos2026_11,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
             AND MONTH(CP.cpFechaCompCompra) = 12
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS Kilos2026_12,

    /* =====================================================
       TOTALES ANUALES
       ===================================================== */

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2024
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS TotalKilos2024,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2025
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS TotalKilos2025,

    SUM(
        CASE
            WHEN YEAR(CP.cpFechaCompCompra) = 2026
            THEN IT.cpPesNetIteComCMP * 0.46
            ELSE 0
        END
    ) AS TotalKilos2026

FROM CMP_Productor AA

INNER JOIN MGE_UnidadOperativa BB
    ON AA.cpID_UnidadOperativa = BB.cpID_UnidadOperativa

INNER JOIN CMP_RepresProductor CC
    ON AA.cpID_Productor = CC.cpID_Productor
    AND CC.cpDNIRepreProd <> ''
    AND CC.cpDNIRepreProd IS NOT NULL
    AND CC.cpActivo = '1'

INNER JOIN MGE_Ubigeo DD
    ON AA.cpID_Ubigeo = DD.cpID_Ubigeo

LEFT JOIN CMP_Base EE
    ON AA.cpID_UnidadOperativa = EE.cpID_UnidadOperativa
    AND CC.cpBase = EE.cpID_Base

LEFT JOIN CMP_Sector FF
    ON AA.cpID_UnidadOperativa = FF.cpID_UnidadOperativa
    AND CC.cpBase = FF.cpID_Base
    AND CC.cpSector = FF.cpID_Sector

LEFT JOIN CMP_ComprobanCompra CP
    ON CP.cpID_Productor = AA.cpID_Productor
    AND CP.cpDNI = CC.cpDNIRepreProd
    AND CP.cpID_UnidadOperativa = '090060'
    AND CP.cpCompCMPAnulado = '0'
    AND CP.cpFechaCompCompra >= '20240101'
    AND CP.cpFechaCompCompra < '20270101'

LEFT JOIN CMP_ItemCompCMP IT
    ON CP.cpID_CompCMPGen = IT.cpID_CompCMPGen

WHERE AA.cpID_Situacion <> '07' and aa.cpID_UnidadOperativa = '090060'

GROUP BY
    AA.cpID_Productor,
    LEFT(
        RTRIM(AA.cpApePaternProduc) + ' ' +
        RTRIM(AA.cpApeMaterProduc) + ' ' +
        RTRIM(AA.cpNombresProduc),
        40
    ),
    AA.cpID_UnidadOperativa,
    BB.cpDescriUnidOpera,
    CC.cpID_RepresProductor,
    LEFT(
        RTRIM(CC.cpApePateReprePro) + ' ' +
        RTRIM(CC.cpApeMateReprePro) + ' ' +
        RTRIM(CC.cpNombresReprePro),
        40
    ),
    CC.cpDNIRepreProd,
    AA.cpID_Ubigeo,
    DD.cpDescripUbigeo,
    CC.cpBase,
    EE.cpDescripcion,
    CC.cpSector,
    FF.cpDescripcion

ORDER BY
    AA.cpID_UnidadOperativa,
    CC.cpBase,
    CC.cpSector,
    LEFT(
        RTRIM(AA.cpApePaternProduc) + ' ' +
        RTRIM(AA.cpApeMaterProduc) + ' ' +
        RTRIM(AA.cpNombresProduc),
        40
    );




    /* =====================================================
       CREAMOS UNA WTH "BASE ENTREGAS DURANTE 2024,2025,2026" 
	   CON UNA MEJOR PRESENTACION POR CADA REGISTRO
       ===================================================== */

	WITH BaseEntregas AS
(
    SELECT
        AA.cpID_Productor,

        LEFT(
            RTRIM(AA.cpApePaternProduc) + ' ' +
            RTRIM(AA.cpApeMaterProduc) + ' ' +
            RTRIM(AA.cpNombresProduc),
            40
        ) AS Productor,

        AA.cpID_UnidadOperativa,
        BB.cpDescriUnidOpera AS UnidadOperativa,

        CC.cpID_RepresProductor,

        LEFT(
            RTRIM(CC.cpApePateReprePro) + ' ' +
            RTRIM(CC.cpApeMateReprePro) + ' ' +
            RTRIM(CC.cpNombresReprePro),
            40
        ) AS Representante,

        CC.cpDNIRepreProd,

        AA.cpID_Ubigeo,
        DD.cpDescripUbigeo AS Ubigeo,

        CC.cpBase,
        EE.cpDescripcion AS Base,

        CC.cpSector,
        FF.cpDescripcion AS Sector,

        YEAR(CP.cpFechaCompCompra) AS Anio,

        MONTH(CP.cpFechaCompCompra) AS Mes,

        SUM(
            IT.cpPesNetIteComCMP * 0.46
        ) AS Kilos

    FROM CMP_Productor AA

    INNER JOIN MGE_UnidadOperativa BB
        ON AA.cpID_UnidadOperativa =
           BB.cpID_UnidadOperativa

    INNER JOIN CMP_RepresProductor CC
        ON AA.cpID_Productor =
           CC.cpID_Productor
        AND CC.cpDNIRepreProd <> ''
        AND CC.cpDNIRepreProd IS NOT NULL
        AND CC.cpActivo = '1'

    INNER JOIN MGE_Ubigeo DD
        ON AA.cpID_Ubigeo =
           DD.cpID_Ubigeo

    LEFT JOIN CMP_Base EE
        ON AA.cpID_UnidadOperativa =
           EE.cpID_UnidadOperativa
        AND CC.cpBase =
            EE.cpID_Base

    LEFT JOIN CMP_Sector FF
        ON AA.cpID_UnidadOperativa =
           FF.cpID_UnidadOperativa
        AND CC.cpBase =
            FF.cpID_Base
        AND CC.cpSector =
            FF.cpID_Sector

    INNER JOIN CMP_ComprobanCompra CP
        ON CP.cpID_Productor =
           AA.cpID_Productor
        AND CP.cpDNI =
            CC.cpDNIRepreProd
        AND CP.cpID_UnidadOperativa =
            '090060'
        AND CP.cpCompCMPAnulado =
            '0'
        AND CP.cpFechaCompCompra >= '20240101'
        AND CP.cpFechaCompCompra < '20270101'

    INNER JOIN CMP_ItemCompCMP IT
        ON CP.cpID_CompCMPGen =
           IT.cpID_CompCMPGen

    WHERE AA.cpID_Situacion <> '07'
      AND AA.cpID_UnidadOperativa = '090060'

    GROUP BY

        AA.cpID_Productor,

        LEFT(
            RTRIM(AA.cpApePaternProduc) + ' ' +
            RTRIM(AA.cpApeMaterProduc) + ' ' +
            RTRIM(AA.cpNombresProduc),
            40
        ),

        AA.cpID_UnidadOperativa,
        BB.cpDescriUnidOpera,

        CC.cpID_RepresProductor,

        LEFT(
            RTRIM(CC.cpApePateReprePro) + ' ' +
            RTRIM(CC.cpApeMateReprePro) + ' ' +
            RTRIM(CC.cpNombresReprePro),
            40
        ),

        CC.cpDNIRepreProd,

        AA.cpID_Ubigeo,
        DD.cpDescripUbigeo,

        CC.cpBase,
        EE.cpDescripcion,

        CC.cpSector,
        FF.cpDescripcion,

        YEAR(CP.cpFechaCompCompra),
        MONTH(CP.cpFechaCompCompra)
)

SELECT *
FROM BaseEntregas
ORDER BY
    Anio,
    Mes,
    Productor;
--------

---CREAMOS UNA TABLA TEMPORAL PARA PODER HACER CONSULTAS EN ESTE
-- 1. Validamos y eliminamos la tabla temporal si ya existe en la sesión
IF OBJECT_ID('tempdb..#BaseEntregasTemporal') IS NOT NULL
    DROP TABLE #BaseEntregasTemporal;

-- 2. Tu estructura CTE original
WITH BaseEntregas AS
(
    SELECT
        AA.cpID_Productor,
        LEFT(
            RTRIM(AA.cpApePaternProduc) + ' ' +
            RTRIM(AA.cpApeMaterProduc) + ' ' +
            RTRIM(AA.cpNombresProduc),
            40
        ) AS Productor,
        AA.cpID_UnidadOperativa,
        BB.cpDescriUnidOpera AS UnidadOperativa,
        CC.cpID_RepresProductor,
        LEFT(
            RTRIM(CC.cpApePateReprePro) + ' ' +
            RTRIM(CC.cpApeMateReprePro) + ' ' +
            RTRIM(CC.cpNombresReprePro),
            40
        ) AS Representante,
        CC.cpDNIRepreProd,
        AA.cpID_Ubigeo,
        DD.cpDescripUbigeo AS Ubigeo,
        CC.cpBase,
        EE.cpDescripcion AS Base,
        CC.cpSector,
        FF.cpDescripcion AS Sector,
        YEAR(CP.cpFechaCompCompra) AS Anio,
        MONTH(CP.cpFechaCompCompra) AS Mes,
        SUM(IT.cpPesNetIteComCMP * 0.46) AS Kilos
    FROM CMP_Productor AA
    INNER JOIN MGE_UnidadOperativa BB
        ON AA.cpID_UnidadOperativa = BB.cpID_UnidadOperativa
    INNER JOIN CMP_RepresProductor CC
        ON AA.cpID_Productor = CC.cpID_Productor
        AND CC.cpDNIRepreProd <> ''
        AND CC.cpDNIRepreProd IS NOT NULL
        AND CC.cpActivo = '1'
    INNER JOIN MGE_Ubigeo DD
        ON AA.cpID_Ubigeo = DD.cpID_Ubigeo
    LEFT JOIN CMP_Base EE
        ON AA.cpID_UnidadOperativa = EE.cpID_UnidadOperativa
        AND CC.cpBase = EE.cpID_Base
    LEFT JOIN CMP_Sector FF
        ON AA.cpID_UnidadOperativa = FF.cpID_UnidadOperativa
        AND CC.cpBase = FF.cpID_Base
        AND CC.cpSector = FF.cpID_Sector
    INNER JOIN CMP_ComprobanCompra CP
        ON CP.cpID_Productor = AA.cpID_Productor
        AND CP.cpDNI = CC.cpDNIRepreProd
        AND CP.cpID_UnidadOperativa = '090060'
        AND CP.cpCompCMPAnulado = '0'
        AND CP.cpFechaCompCompra >= '20240101'
        AND CP.cpFechaCompCompra < '20270101'
    INNER JOIN CMP_ItemCompCMP IT
        ON CP.cpID_CompCMPGen = IT.cpID_CompCMPGen
    WHERE AA.cpID_Situacion <> '07'
      AND AA.cpID_UnidadOperativa = '090060'
    GROUP BY
        AA.cpID_Productor,
        LEFT(RTRIM(AA.cpApePaternProduc) + ' ' + RTRIM(AA.cpApeMaterProduc) + ' ' + RTRIM(AA.cpNombresProduc), 40),
        AA.cpID_UnidadOperativa,
        BB.cpDescriUnidOpera,
        CC.cpID_RepresProductor,
        LEFT(RTRIM(CC.cpApePateReprePro) + ' ' + RTRIM(CC.cpApeMateReprePro) + ' ' + RTRIM(CC.cpNombresReprePro), 40),
        CC.cpDNIRepreProd,
        AA.cpID_Ubigeo,
        DD.cpDescripUbigeo,
        CC.cpBase,
        EE.cpDescripcion,
        CC.cpSector,
        FF.cpDescripcion,
        YEAR(CP.cpFechaCompCompra),
        MONTH(CP.cpFechaCompCompra)
)
-- 3. Aquí insertamos los datos en la tabla temporal (#)
SELECT *
INTO #BaseEntregasTemporal
FROM BaseEntregas;

-- 4. Ahora puedes consultar tu tabla temporal ordenando como lo necesitabas
---El prefijo # define que es una tabla temporal local. Solo existirá en la pestaña de SSMS donde la ejecutes y se borrará automáticamente cuando cierres esa pestaña.
SELECT * 
FROM #BaseEntregasTemporal
ORDER BY Anio, Mes, Productor;
--------------------------------------PREGUNTAS------------

---PREGUNTA 1: Volumen Total y Cobertura de Productores
-----La gerencia necesita reportar el volumen total neto acopiado histórico de la Unidad Operativa '090060' y mapear cuántos productores únicos han entregado materia prima.

SELECT 
    SUM(Kilos) AS TotalKilosHistorico,
    COUNT(DISTINCT cpID_Productor) AS TotalProductoresUnicos
FROM #BaseEntregasTemporal;
---PREGUNTA 2: Ranking de Producción por Ubigeo (Zonas Críticas)
---Identificar qué regiones geográficas aportan el mayor volumen para priorizar esfuerzos logísticos y de transporte.
SELECT 
    Ubigeo,
    SUM(Kilos) AS KilosAcopiados,
    COUNT(DISTINCT cpID_Productor) AS ProductoresEnZona
FROM #BaseEntregasTemporal
GROUP BY Ubigeo
ORDER BY KilosAcopiados DESC;
--PREGUNTA 3: Desempeño Histórico Anualizado
--- Evaluar si el negocio está creciendo año contra año en volumen total recibido.
SELECT 
    Anio,
    SUM(Kilos) AS KilosTotales,
    AVG(Kilos) AS PromedioPorEntregaMensual
FROM #BaseEntregasTemporal
GROUP BY Anio
ORDER BY Anio ASC;
--PREGUNTA 4: Auditoría de Clasificación Operativa
--Detectar si existen registros(PRODUCTO-REPRESENTANTE) en la asignación de Bases y Sectores.
SELECT 
    COUNT(*) AS TotalRegistros,
    SUM(CASE WHEN Base IS NULL THEN 1 ELSE 0 END) AS RegistrosSinBase,
    SUM(CASE WHEN Sector IS NULL THEN 1 ELSE 0 END) AS RegistrosSinSector
FROM #BaseEntregasTemporal;

--PREGUNTA 5:Comportamiento Estacional (Volumen Mensual Consolidado)
---Determinar cuáles son los meses pico de acopio para prever la capacidad instalada en planta y necesidades de flujo de caja.

SELECT 
    Mes,
    SUM(Kilos) AS KilosTotalesHistoricos,
    AVG(Kilos) AS MediaKilosMensual
FROM #BaseEntregasTemporal
GROUP BY Mes
ORDER BY MediaKilosMensual ASC;




