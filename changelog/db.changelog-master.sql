--liquibase formatted sql

--changeset estudiante:001
CREATE SCHEMA IF NOT EXISTS workspace.bi_lab_jc
COMMENT 'Laboratorio 02 - BI y Big Data - UCV';

--rollback DROP SCHEMA IF EXISTS <CATALOGO>.bi_lab_<codigo_estudiante>;

--changeset estudiante:002
CREATE SCHEMA IF NOT EXISTS workspace.bi_staging_jc
COMMENT 'Staging schema - BI and Big Data - Lab 03';
--rollback DROP SCHEMA IF EXISTS workspace.bi_staging_jc;

-- include file: changelog/changes/008_create_bronze_silver_schemas.sql
-- include file: changelog/changes/009_create_bronze_raw_tables.sql