CREATE TABLE [silver].[silver_rejected_customers] (

	[customer_id] varchar(8000) NULL, 
	[batch_id] varchar(8000) NULL, 
	[city] varchar(8000) NULL, 
	[customer_name] varchar(8000) NULL, 
	[customer_since] varchar(8000) NULL, 
	[distance_km] float NULL, 
	[email] varchar(8000) NULL, 
	[ingestion_timestamp] varchar(8000) NULL, 
	[phone] varchar(8000) NULL, 
	[source_file] varchar(8000) NULL, 
	[store_id] varchar(8000) NULL, 
	[reject_reason] varchar(8000) NULL, 
	[quarantine_at] datetime2(6) NULL
);