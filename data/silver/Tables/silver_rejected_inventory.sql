CREATE TABLE [silver].[silver_rejected_inventory] (

	[batch_id] varchar(8000) NULL, 
	[closing_stock] bigint NULL, 
	[ingestion_timestamp] varchar(8000) NULL, 
	[inventory_date] varchar(8000) NULL, 
	[inventory_id] varchar(8000) NULL, 
	[opening_stock] bigint NULL, 
	[product_id] varchar(8000) NULL, 
	[sold_qty] bigint NULL, 
	[source_file] varchar(8000) NULL, 
	[store_id] varchar(8000) NULL, 
	[inventory_sk] varchar(8000) NULL, 
	[reject_reason] varchar(8000) NULL, 
	[quarantine_at] datetime2(6) NULL
);