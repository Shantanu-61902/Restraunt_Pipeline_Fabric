CREATE TABLE [silver].[silver_rejected_products] (

	[product_id] varchar(8000) NULL, 
	[batch_id] varchar(8000) NULL, 
	[category] varchar(8000) NULL, 
	[ingestion_timestamp] varchar(8000) NULL, 
	[price] bigint NULL, 
	[product_name] varchar(8000) NULL, 
	[source_file] varchar(8000) NULL, 
	[store_id] varchar(8000) NULL, 
	[reject_reason] varchar(8000) NULL, 
	[quarantine_at] datetime2(6) NULL
);