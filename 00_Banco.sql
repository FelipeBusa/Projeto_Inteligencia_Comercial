-- Arquivo: 00_banco.sql
-- Banco de Dados: inteligencia_comercial
-- ============================================================


-- ============================================================
-- 1. CRIAÇÃO DO BANCO DE DADOS
-- ============================================================
CREATE DATABASE inteligencia_comercial;


-- ============================================================
-- 2. CRIAÇÃO DAS SCHEMAS
-- ============================================================
CREATE SCHEMA IF NOT EXISTS raw;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;


-- ============================================================
-- 3. LIMPEZA DOS OBJETOS EXISTENTES
-- ============================================================
/*
ATENÇÃO: execute esta seção somente se desejar remover as tabelas existentes no banco "inteligencia_comercial".
Os comandos DROP apagam os dados armazenados nesses objetos.
*/
-- DROP TABLE IF EXISTS [nome gold];
-- DROP TABLE IF EXISTS [nome silver];
-- DROP TABLE IF EXISTS [nome raw];


-- ============================================================
-- 4. CRIAÇÃO DAS TABELAS RAW
-- ============================================================
CREATE TABLE raw.raw_order_itens_dataset (
    id_order              VARCHAR(4000));