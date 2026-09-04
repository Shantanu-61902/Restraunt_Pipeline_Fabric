CREATE TABLE [silver].[silver_rejected_order_items] (

	[batch_id] varchar(8000) NULL, 
	[ingestion_timestamp] varchar(8000) NULL, 
	[line_amount] float NULL, 
	[order_id] varchar(8000) NULL, 
	[product_id] varchar(8000) NULL, 
	[quantity] bigint NULL, 
	[source_file] varchar(8000) NULL, 
	[store_id] varchar(8000) NULL, 
	[unit_price] float NULL, 
	[order_item_sk] varchar(8000) NULL, 
	[reject_reason] varchar(8000) NULL, 
	[quarantine_at] datetime2(6) NULL, 
	[silver_processed_at] datetime2(6) NULL
);