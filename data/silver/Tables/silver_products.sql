CREATE TABLE [silver].[silver_products] (

	[batch_id] varchar(8000) NULL, 
	[category] varchar(8000) NULL, 
	[ingestion_timestamp] varchar(8000) NULL, 
	[price] float NULL, 
	[product_id] varchar(8000) NULL, 
	[product_name] varchar(8000) NULL, 
	[source_file] varchar(8000) NULL, 
	[store_id] varchar(8000) NULL, 
	[price_valid_flag] varchar(8000) NULL, 
	[price_band] varchar(8000) NULL, 
	[silver_processed_at] datetime2(6) NULL
);