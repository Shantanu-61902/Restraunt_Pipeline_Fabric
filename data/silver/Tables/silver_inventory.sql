CREATE TABLE [silver].[silver_inventory] (

	[batch_id] varchar(8000) NULL, 
	[closing_stock] int NULL, 
	[ingestion_timestamp] varchar(8000) NULL, 
	[inventory_date] varchar(8000) NULL, 
	[inventory_id] varchar(8000) NULL, 
	[opening_stock] int NULL, 
	[product_id] varchar(8000) NULL, 
	[sold_qty] int NULL, 
	[source_file] varchar(8000) NULL, 
	[store_id] varchar(2048) NULL, 
	[inventory_sk] varchar(8000) NULL, 
	[inventory_status] varchar(8000) NULL, 
	[silver_processed_at] datetime2(6) NULL
);