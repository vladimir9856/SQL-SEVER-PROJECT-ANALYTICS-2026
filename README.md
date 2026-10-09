# SQL-SERVER-PROJECT-ENACO-ANALYTICS-2026

Este proyecto corresponde al reto final de análisis de datos, cuyo objetivo es aplicar conocimientos de SQL aplicados en la  plataforma de DATABRICKS, haciendo el análisis exploratorio y pensamiento analítico orientado al negocio para transformar datos reales en información útil para la toma de decisiones.

![IMAGEN DE PORTADA](./imagen/P02.png)

# Proyecto SQL: Análisis Comercial y Productivo de Hojas de Coca en ENACO

## Resumen (Overview)

El presente proyecto tiene como objetivo analizar información histórica relacionada con los **productores, representantes, unidades operativas y entregas de hojas de coca de ENACO S.A.**, utilizando **SQL Server** dentro de **DATABRISCKS** como principal herramienta de análisis.

A través del procesamiento y análisis de datos correspondientes al período **2024–2026**, se busca identificar patrones de comportamiento, evolución de las entregas, principales productores, representantes con mayor volumen, concentración de las entregas y variaciones significativas a través del tiempo.

El proyecto no se limita únicamente a la elaboración de consultas SQL, sino que busca aplicar un enfoque de **Business Analytics**, partiendo de preguntas de negocio y transformando los datos operativos en **KPIs, hallazgos e insights accionables**.

El análisis se desarrolla utilizando técnicas SQL de diferentes niveles de complejidad, incluyendo:

- Consultas de agregación.
- `JOIN`.
- `CASE WHEN`.
- CTEs.
- Subconsultas.
- Window Functions.
- `RANK()`.
- `ROW_NUMBER()`.
- Análisis de crecimiento interanual.
- Rankings.
- Participación porcentual.
- Análisis de concentración.

---

## 📩 Si quieres aprender SQL, conéctate conmigo

<p align="center">

  <a href="TU_LINK_LINKEDIN">
    <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=flat-square&logo=linkedin&logoColor=white" />
  </a>

  <a href="TU_LINK_GITHUB">
    <img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white" />
  </a>

</p>

---

# 📚 Estructura del Proyecto

- [Sobre los Datos](#sobre-los-datos)
- [Principales Entidades Analizadas](#principales-entidades-analizadas)
- [Contexto de Negocio](#contexto-de-negocio)
- [Objetivos](#objetivos)
- [Preguntas de Negocio](#preguntas-de-negocio)
- [Exploración de Datos](#exploración-de-datos)
- [Limpieza y Validación de Datos](#limpieza-y-validación-de-datos)
- [Transformación de Datos](#transformación-de-datos)
- [Metodología](#metodología)
- [Conclusiones](#conclusiones)
- [Tecnologías Utilizadas](#tecnologías-utilizadas)
- [Competencias Demostradas](#competencias-demostradas)
- [Estructura del Repositorio](#estructura-del-repositorio)
- [Autor](#autor)

---

# Sobre los Datos

Los datos utilizados en este proyecto corresponden a información operacional relacionada con:

- Productores.
- Representantes.
- Unidades operativas.
- Ubicación geográfica.
- Base-Sector
- Entrega mensual de los kilso de hojas de coca.
- Años de operación.

El período analizado comprende:

**2024 – 2026**

La información permite estudiar el comportamiento histórico de las entregas y construir indicadores relacionados con el volumen de hojas de coca adquirido. Estas estan distribuidas en más de 36500 filas y 18 columnas.

![IMAGEN DE LA VISTA DE LOS DATOS GENERALES](./imagen/P01.png)

---
# Principales entidades analizadas

| Entidad | Descripción |
|---|---|
| Productor | Persona registrada como productor(Títular) |
| Representante | Representante asociado al productor |
| Unidad Operativa | Unidad operativa donde se encuentra registrado el productor |
| Base | Base a la que pertenece el representante productor |
| Sector | Sector a la que pertenece el productor |
| Año | Año correspondiente a la entrega |
| Mes | Mes correspondiente a la entrega|
| Kilos Entregados | Peso convertido utilizado para el análisis |

---

# Contexto de Negocio

ENACO S.A. desarrolla actividades relacionadas con el acopio y comercialización de la hoja de coca dentro del marco establecido para esta actividad en el Perú.

La información operacional contiene registros históricos que permiten analizar el comportamiento de las entregas realizadas por productores, así como su relación con representantes y unidades operativas. (Base-Sector)

El análisis busca proporcionar una perspectiva orientada al negocio para responder preguntas como:

- ¿Qué unidades operativas concentran mayor volumen?
- ¿Qué productores tienen mayor participación?
- ¿Qué representantes gestionan mayor volumen?
- ¿Cómo ha evolucionado el volumen de entregas?
- ¿Qué productores presentan crecimiento?
- ¿Qué productores presentan disminución?
- ¿Qué productores presentan comportamientos atípicos?
- ¿Qué unidades operativas presentan mayor variabilidad?
- ¿Qué productores tienen una participación relevante dentro del volumen total?
- ¿En que estado se encuentra dicha (BASE-SECTOR)?

> **Nota:** Este proyecto tiene fines académicos y de portafolio. Los resultados dependen del conjunto de datos utilizado y no representan necesariamente indicadores oficiales publicados por ENACO S.A.

---

# Objetivos

## Objetivo General

Analizar mediante SQL Server el comportamiento histórico de las entregas de hojas de coca realizadas durante el período 2024–2026, con el propósito de identificar patrones, tendencias, concentración de volumen y oportunidades de análisis para la gestión comercial y operativa.

## Objetivos Específicos

- Analizar el volumen de entregas por año.
- Identificar las unidades operativas con mayor volumen.
- Identificar los principales productores.
- Analizar el desempeño de los representantes.
- Calcular variaciones interanuales.
- Identificar productores con crecimiento sostenido.
- Identificar productores con disminuciones significativas.
- Analizar la concentración del volumen.
- Detectar posibles inconsistencias en los datos.
- Validar relaciones entre productores y representantes.
- Analizar la variabilidad histórica de las entregas.
- Generar insights orientados a la toma de decisiones.

---

# Preguntas de Negocio

Para desarrollar el análisis se plantearon **15 preguntas de negocio**, organizadas en tres niveles de dificultad.

---

# 🟢 Nivel Básico

## P1: Volumen Total y Cobertura de Productores

### Pregunta

**¿Cuánto fue el total de acopio durante estos 3 años de los unicos productores y mapear cuántos productores únicos han entregado materia prima  ?**

### Solución

```SQL
    SELECT 
    SUM(Kilos) AS TotalKilosHistorico,
    COUNT(DISTINCT cpID_Productor) AS TotalProductoresUnicos
    FROM #BaseEntregasTemporal;
  ``` 

![CAPTURA DEL RESULTADO DE LA PRIMERA PREGUNTA](./imagen/P03.png)



---



# 🟡 Nivel Intermedio

## 6. Evolución por Unidad Operativa

### Pregunta

**¿Cómo evolucionaron las entregas de cada unidad operativa entre 2019 y 2026?**

### Objetivo

Comparar el comportamiento histórico de las unidades operativas.

### Indicadores

- Kilos por año.
- Variación interanual.
- Crecimiento acumulado.
- Tendencia.

---

## 7. Productores con Crecimiento

### Pregunta

**¿Qué productores presentan crecimiento sostenido en sus entregas?**

### Objetivo

Identificar productores cuyo volumen presenta una tendencia positiva durante el período analizado.

### Indicadores

- Kilos por año.
- Variación porcentual.
- Número de períodos con crecimiento.
- Crecimiento acumulado.

---

## 8. Productores con Reducción

### Pregunta

**¿Qué productores presentan reducciones significativas en sus entregas?**

### Objetivo

Detectar productores cuyo volumen disminuyó considerablemente.

Una clasificación puede realizarse mediante `CASE WHEN`:

```sql
  ```                         