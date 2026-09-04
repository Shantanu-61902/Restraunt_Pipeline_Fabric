CREATE TABLE [silver].[silver_customers] (

	[customer_id] varchar(8000) NULL, 
	[batch_id] varchar(8000) NULL, 
	[city] varchar(8000) NULL, 
	[customer_name] varchar(8000) NULL, 
	[customer_since] date NULL, 
	[distance_km] float NULL, 
	[email] varchar(8000) NULL, 
	[ingestion_timestamp] varchar(8000) NULL, 
	[phone] varchar(8000) NULL, 
	[source_file] varchar(8000) NULL, 
	[store_id] varchar(8000) NULL, 
	[customer_age_days] int NULL, 
	[customer_segment] varchar(8000) NULL, 
	[silver_processed_at] datetime2(6) NULL, 
	[total_orders] bigint NULL, 
	[last_order_date] date NULL, 
	[total_spent] float NULL, 
	[avg_order_value] float NULL
);