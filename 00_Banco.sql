-- Arquivo: 00_banco.sql
-- Banco de Dados: inteligencia_comercial

-- ============================================================
-- 1. CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE inteligencia_comercial;


-- ============================================================
-- 2. CRIAÇÃO DAS SCHEMAS
CREATE SCHEMA IF NOT EXISTS raw;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;


-- ============================================================
-- 3. LIMPEZA DOS OBJETOS EXISTENTES
/* ATENÇÃO: execute esta seção somente se desejar remover as tabelas existentes no banco "inteligencia_comercial".
Os comandos DROP apagam os dados armazenados nesses objetos. */

-- DROP TABLE IF EXISTS [nome gold];
-- DROP TABLE IF EXISTS [nome silver];

-- TABELAS RAW
-- Visualizar todas as tabelas
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'raw'
	AND table_type = 'BASE TABLE'
ORDER BY table_name;

-- Limpeza tabelas Raw
DROP TABLE IF EXISTS raw.customers;
DROP TABLE IF EXISTS raw.geolocation;
DROP TABLE IF EXISTS raw.order_items;
DROP TABLE IF EXISTS raw.order_payments;
DROP TABLE IF EXISTS raw.order_reviews;
DROP TABLE IF EXISTS raw.orders;
DROP TABLE IF EXISTS raw.product_category_name_translation;
DROP TABLE IF EXISTS raw.products;
DROP TABLE IF EXISTS raw.sellers;


-- ============================================================
-- 4. CRIAÇÃO DAS TABELAS RAW

-- 4.1. CUSTOMERS
-- Arquivo: olist_customers_dataset.csv
CREATE TABLE raw.customers (
	customer_id					VARCHAR,
	customer_unique_id			VARCHAR,
	customer_zip_code_prefix	VARCHAR,
	customer_city				VARCHAR,
	customer_state				VARCHAR);

-- Validar criação raw.customers
SELECT * FROM raw.customers;


-- ============================================================
-- 4.2. GEOLOCATION
-- Arquivo: olist_geolocation_dataset.csv
CREATE TABLE IF NOT EXISTS raw.geolocation (
	geolocation_zip_code_prefix	VARCHAR,
	geolocation_lat				VARCHAR,
	geolocation_lng				VARCHAR,
	geolocation_city			VARCHAR,
	geolocation_state			VARCHAR);

-- Validar criação raw.geolocation
SELECT * FROM raw.geolocation;


-- ============================================================
-- 4.3. ORDER ITEMS
-- Arquivo: olist_order_items_dataset.csv
CREATE TABLE IF NOT EXISTS raw.order_items (
	order_id				VARCHAR,
	order_item_id			VARCHAR,
	product_id				VARCHAR,
	seller_id				VARCHAR,
	shipping_limit_date		VARCHAR,
	price					VARCHAR,
	freight_value			VARCHAR);

-- Validar criação raw.order_items
SELECT * FROM raw.order_items;


-- ============================================================
-- 4.4. ORDER PAYMENTS
-- Arquivo: olist_order_payments_dataset.csv
CREATE TABLE IF NOT EXISTS raw.order_payments (
	order_id				VARCHAR,
	payment_sequential		VARCHAR,
	payment_type			VARCHAR,
	payment_installments	VARCHAR,
	payment_value			VARCHAR);

-- Validar criação raw.order_payments
SELECT * FROM raw.order_payments;


-- ============================================================
-- 4.5. ORDER REVIEWS
-- Arquivo: olist_order_reviews_dataset.csv
CREATE TABLE IF NOT EXISTS raw.order_reviews (
	review_id				VARCHAR,
	order_id				VARCHAR,
	review_score			VARCHAR,
	review_comment_title	VARCHAR,
	review_comment_message	VARCHAR,
	review_creation_date	VARCHAR,
	review_answer_timestamp	VARCHAR);

-- Validar criação raw.order_reviews
SELECT * FROM raw.order_reviews;


-- ============================================================
-- 4.6. ORDERS
-- Arquivo: olist_orders_dataset.csv
CREATE TABLE IF NOT EXISTS raw.orders (
	order_id						VARCHAR,
	customer_id						VARCHAR,
	order_status					VARCHAR,
	order_purchase_timestamp		VARCHAR,
	order_approved_at				VARCHAR,
	order_delivered_carrier_date	VARCHAR,
	order_delivered_customer_date	VARCHAR,
	order_estimated_delivery_date	VARCHAR);

-- Validar criação raw.orders
SELECT * FROM raw.orders;


-- ============================================================
-- 4.7. PRODUCTS
-- Arquivo: olist_products_dataset.csv
CREATE TABLE IF NOT EXISTS raw.products (
	product_id					VARCHAR,
	product_category_name		VARCHAR,
	product_name_lenght			VARCHAR,
	product_description_lenght	VARCHAR,
	product_photos_qty			VARCHAR,
	product_weight_g			VARCHAR,
	product_length_cm			VARCHAR,
	product_height_cm			VARCHAR,
	product_width_cm			VARCHAR);

-- Validar criação raw.products
SELECT * FROM raw.products;


-- ============================================================
-- 4.8. SELLERS
-- Arquivo: olist_sellers_dataset.csv
CREATE TABLE IF NOT EXISTS raw.sellers (
	seller_id				VARCHAR,
	seller_zip_code_prefix	VARCHAR,
	seller_city				VARCHAR,
	seller_state			VARCHAR);

-- Validar criação raw.sellers
SELECT * FROM raw.sellers;


-- ============================================================
-- 4.9. PRODUCT CATEGORY NAME TRANSLATION
-- Arquivo: product_category_name_translation.csv
CREATE TABLE IF NOT EXISTS raw.product_category_name_translation (
	product_category_name			VARCHAR,
	product_category_name_english	VARCHAR);

-- Validar criação raw.product_category_name_translation
SELECT * FROM raw.product_category_name_translation;


-- ============================================================
-- 5. VALIDAÇÃO DAS TABELAS CRIADAS
SELECT 
	table_name,
	ordinal_position AS ordem_coluna,
	column_name,
	data_type
FROM information_schema.columns
WHERE table_schema = 'raw'
ORDER BY table_name, ordinal_position;
