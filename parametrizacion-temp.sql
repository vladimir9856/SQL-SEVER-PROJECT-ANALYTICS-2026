--CONSULTA ORIGINAL, SI BIEN ESTO MUESTRA DETALLADAMENTE INFORMACION DELAS ENTREGAS DURANTE (2024,2025,2026)
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
    AND CP.cpFechaCompCompra >= '20260101'
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


------MEJORAS-----
/* ============================================================
   ENTREGAS MENSUALES POR PRODUCTOR Y REPRESENTANTE
   PERIODO: 2024 - 2026
   UNIDAD OPERATIVA: 090060
   FORMATO: LARGO (UNA FILA POR MES)
   ============================================================ */

;WITH Meses AS
(
    -- Generar los 36 meses del periodo 2024-2026
    SELECT CAST('20240101' AS DATE) AS FechaMes

    UNION ALL

    SELECT DATEADD(MONTH, 1, FechaMes)
    FROM Meses
    WHERE FechaMes < '20261201'
),

BaseProductorRepresentante AS
(
    -- Maestro de productores y representantes
    SELECT DISTINCT
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

        CC.cpDNIRepreProd AS DNIRepresentante,

        AA.cpID_Ubigeo,
        DD.cpDescripUbigeo AS UbigeoDescripcion,

        CC.cpBase,
        EE.cpdescripcion AS BaseDescripcion,

        CC.cpSector,
        FF.cpdescripcion AS SectorDescripcion

    FROM CMP_Productor AA

    INNER JOIN MGE_UnidadOperativa BB
        ON AA.cpID_UnidadOperativa =
           BB.cpID_UnidadOperativa

    INNER JOIN CMP_RepresProductor CC
        ON AA.cpID_Productor = CC.cpID_Productor
        AND CC.cpDNIRepreProd <> ''
        AND CC.cpDNIRepreProd IS NOT NULL
        AND CC.cpActivo = '1'

    INNER JOIN MGE_Ubigeo DD
        ON AA.cpID_Ubigeo = DD.cpID_Ubigeo

    LEFT JOIN CMP_Base EE
        ON AA.cpID_UnidadOperativa =
           EE.cpID_UnidadOperativa
        AND CC.cpBase = EE.cpID_Base

    LEFT JOIN CMP_Sector FF
        ON AA.cpID_UnidadOperativa =
           FF.cpID_UnidadOperativa
        AND CC.cpBase = FF.cpID_Base
        AND CC.cpSector = FF.cpID_Sector

    WHERE AA.cpID_Situacion <> '07'
      AND AA.cpID_UnidadOperativa = '090060'
),


ComprasMensuales AS
(
    SELECT
        CP.cpID_Productor,
        CP.cpDNI,

        DATEADD(
            MONTH,
            DATEDIFF(
                MONTH,
                0,
                CP.cpFechaCompCompra
            ),
            0
        ) AS FechaMes,

        SUM(IT.cpPesNetIteComCMP * 0.46)
            AS KilosEntregados

    FROM CMP_ComprobanCompra CP

    INNER JOIN CMP_ItemCompCMP IT
        ON CP.cpID_CompCMPGen = IT.cpID_CompCMPGen

    WHERE CP.cpID_UnidadOperativa = '090060'
      AND CP.cpCompCMPAnulado = '0'
      AND CP.cpFechaCompCompra >= '20240101'
      AND CP.cpFechaCompCompra <  '20270101'

    GROUP BY
        CP.cpID_Productor,
        CP.cpDNI,

        DATEADD(
            MONTH,
            DATEDIFF(
                MONTH,
                0,
                CP.cpFechaCompCompra
            ),
            0
        )
)

SELECT
    B.cpID_Productor,
    B.Productor,

    B.cpID_UnidadOperativa,
    B.UnidadOperativa,

    B.cpID_RepresProductor,
    B.Representante,
    B.DNIRepresentante,

    B.cpID_Ubigeo,
    B.UbigeoDescripcion,

    B.cpBase,
    B.BaseDescripcion,

    B.cpSector,
    B.SectorDescripcion,

    YEAR(M.FechaMes) AS Anio,

    MONTH(M.FechaMes) AS NumeroMes,

    CASE MONTH(M.FechaMes)
        WHEN 1  THEN 'Enero'
        WHEN 2  THEN 'Febrero'
        WHEN 3  THEN 'Marzo'
        WHEN 4  THEN 'Abril'
        WHEN 5  THEN 'Mayo'
        WHEN 6  THEN 'Junio'
        WHEN 7  THEN 'Julio'
        WHEN 8  THEN 'Agosto'
        WHEN 9  THEN 'Septiembre'
        WHEN 10 THEN 'Octubre'
        WHEN 11 THEN 'Noviembre'
        WHEN 12 THEN 'Diciembre'
    END AS Mes,

    M.FechaMes,

    ISNULL(C.KilosEntregados, 0) AS KilosEntregados

FROM BaseProductorRepresentante B

CROSS JOIN Meses M

LEFT JOIN ComprasMensuales C
    ON C.cpID_Productor = B.cpID_Productor
    AND C.cpDNI = B.DNIRepresentante
    AND C.FechaMes = M.FechaMes

ORDER BY
    B.cpID_UnidadOperativa,
    B.cpBase,
    B.cpSector,
    B.Productor,
    B.Representante,
    M.FechaMes

OPTION (MAXRECURSION 100);




-----------AHORA PARA HACER CONSULTA DENTRO DE ESTA CONSULTA CREAREMOS UNA TABLA TEMP #EntregasMensuales 
IF OBJECT_ID('tempdb..#EntregasMensuales') IS NOT NULL
    DROP TABLE #EntregasMensuales;

;WITH Meses AS
(
    -- Aquí mantienes tu CTE Meses original
    SELECT CAST('20240101' AS DATETIME) AS FechaMes

    UNION ALL

    SELECT DATEADD(MONTH, 1, FechaMes)
    FROM Meses
    WHERE FechaMes < '20261201'
),

BaseProductorRepresentante AS
(
-- Maestro de productores y representantes
    SELECT DISTINCT
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

        CC.cpDNIRepreProd AS DNIRepresentante,

        AA.cpID_Ubigeo,
        DD.cpDescripUbigeo AS UbigeoDescripcion,

        CC.cpBase,
        EE.cpdescripcion AS BaseDescripcion,

        CC.cpSector,
        FF.cpdescripcion AS SectorDescripcion

    FROM CMP_Productor AA

    INNER JOIN MGE_UnidadOperativa BB
        ON AA.cpID_UnidadOperativa =
           BB.cpID_UnidadOperativa

    INNER JOIN CMP_RepresProductor CC
        ON AA.cpID_Productor = CC.cpID_Productor
        AND CC.cpDNIRepreProd <> ''
        AND CC.cpDNIRepreProd IS NOT NULL
        AND CC.cpActivo = '1'

    INNER JOIN MGE_Ubigeo DD
        ON AA.cpID_Ubigeo = DD.cpID_Ubigeo

    LEFT JOIN CMP_Base EE
        ON AA.cpID_UnidadOperativa =
           EE.cpID_UnidadOperativa
        AND CC.cpBase = EE.cpID_Base

    LEFT JOIN CMP_Sector FF
        ON AA.cpID_UnidadOperativa =
           FF.cpID_UnidadOperativa
        AND CC.cpBase = FF.cpID_Base
        AND CC.cpSector = FF.cpID_Sector

    WHERE AA.cpID_Situacion <> '07'
      AND AA.cpID_UnidadOperativa = '090060'
),

ComprasMensuales AS
(
    SELECT
        CP.cpID_Productor,
        CP.cpDNI,

        DATEADD(
            MONTH,
            DATEDIFF(
                MONTH,
                0,
                CP.cpFechaCompCompra
            ),
            0
        ) AS FechaMes,

        SUM(IT.cpPesNetIteComCMP * 0.46)
            AS KilosEntregados

    FROM CMP_ComprobanCompra CP

    INNER JOIN CMP_ItemCompCMP IT
        ON CP.cpID_CompCMPGen = IT.cpID_CompCMPGen

    WHERE CP.cpID_UnidadOperativa = '090060'
      AND CP.cpCompCMPAnulado = '0'
      AND CP.cpFechaCompCompra >= '20240101'
      AND CP.cpFechaCompCompra <  '20270101'

    GROUP BY
        CP.cpID_Productor,
        CP.cpDNI,

        DATEADD(
            MONTH,
            DATEDIFF(
                MONTH,
                0,
                CP.cpFechaCompCompra
            ),
            0
        )
)

SELECT
    B.cpID_Productor,
    B.Productor,
    B.cpID_UnidadOperativa,
    B.UnidadOperativa,
    B.cpID_RepresProductor,
    B.Representante,
    B.DNIRepresentante,
    B.cpID_Ubigeo,
    B.UbigeoDescripcion,
    B.cpBase,
    B.BaseDescripcion,
    B.cpSector,
    B.SectorDescripcion,

    YEAR(M.FechaMes) AS Anio,
    MONTH(M.FechaMes) AS NumeroMes,

    CASE MONTH(M.FechaMes)
        WHEN 1 THEN 'Enero'
        WHEN 2 THEN 'Febrero'
        WHEN 3 THEN 'Marzo'
        WHEN 4 THEN 'Abril'
        WHEN 5 THEN 'Mayo'
        WHEN 6 THEN 'Junio'
        WHEN 7 THEN 'Julio'
        WHEN 8 THEN 'Agosto'
        WHEN 9 THEN 'Septiembre'
        WHEN 10 THEN 'Octubre'
        WHEN 11 THEN 'Noviembre'
        WHEN 12 THEN 'Diciembre'
    END AS Mes,

    M.FechaMes,
    ISNULL(C.KilosEntregados, 0) AS KilosEntregados

INTO #EntregasMensuales

FROM BaseProductorRepresentante B

CROSS JOIN Meses M

LEFT JOIN ComprasMensuales C
    ON C.cpID_Productor = B.cpID_Productor
    AND C.cpDNI = B.DNIRepresentante
    AND C.FechaMes = M.FechaMes

OPTION (MAXRECURSION 100);---
