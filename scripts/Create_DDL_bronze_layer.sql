/*
***************************
 Script Create DDL CRM and ERP tables
***************************
Script contain :
	CRM
		Bronze.crm_cust_info
		Bronze.crm_prd_info
		Bronze.crm_sales_details
	ERP
		Bronze.erp_cust_AZ12
		Bronze.erp_loc_A101
		Bronze.erp_px_cat_G1v2
-------
	After checking the tables is exists or not 
	If exists will drop the tables then recreate them
------
*/
USE DataWarehouse;

IF ObJECT_ID ('Bronze.crm_cust_info'  , 'U') IS NOT NULL
	DROP TABLE Bronze.crm_cust_info;
CREATE TABLE Bronze.crm_cust_info (
	cust_id int ,
	cust_key nvarchar (50),
	cust_firstname nvarchar (50),
	cust_lastname nvarchar (50),
	cust_marital_status nvarchar (50),
	cust_gender nvarchar (50),
	cust_create_date date);

IF ObJECT_ID ('Bronze.crm_prd_info'  , 'U') IS NOT NULL
	DROP TABLE Bronze.crm_prd_info;
CREATE TABLE Bronze.crm_prd_info (
	prd_id int ,
	prd_key nvarchar (50),
	prd_name nvarchar (50),
	prd_coast decimal ,
	prd_line nvarchar (50),
	prd_start_date date ,
	prd_end_date date);

IF ObJECT_ID ('Bronze.crm_sales_details'  , 'U') IS NOT NULL
	DROP TABLE Bronze.crm_sales_details;
CREATE TABLE Bronze.crm_sales_details (
	sls_order_num nvarchar (50) ,
	sls_prd_key nvarchar (50),
	sls_cust_id int ,
	sls_order_dt date ,
	sls_ship_dt date ,
	sls_due_dt date ,
	sls_sales decimal ,
	sls_quantity int,
	sls_price decimal);

IF ObJECT_ID ('Bronze.erp_cust_AZ12'  , 'U') IS NOT NULL
	DROP TABLE Bronze.erp_cust_AZ12;
CREATE TABLE Bronze.erp_cust_AZ12 (
	cust_key nvarchar (50),
	cust_birthdate date,
	cust_gender nvarchar (50));

IF ObJECT_ID ('Bronze.erp_loc_A101'  , 'U') IS NOT NULL
	DROP TABLE Bronze.erp_loc_A101;
CREATE TABLE Bronze.erp_loc_A101 (
	cust_key nvarchar (50),
	cust_cuntry nvarchar (50));

IF ObJECT_ID ('Bronze.erp_px_cat_G1v2'  , 'U') IS NOT NULL
	DROP TABLE Bronze.erp_px_cat_G1v2;
CREATE TABLE Bronze.erp_px_cat_G1v2 (
	px_id nvarchar (50),
	px_cat nvarchar (50),
	px_subcat nvarchar (50),
	px_mentinance nvarchar (50));
