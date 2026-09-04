CREATE TABLE [silver].[silver_order_items] (

	[order_id] varchar(8000) NULL, 
	[product_id] varchar(8000) NULL, 
	[batch_id] varchar(8000) NULL, 
	[ingestion_timestamp] varchar(8000) NULL, 
	[line_amount] float NULL, 
	[quantity] int NULL, 
	[source_file] varchar(8000) NULL, 
	[store_id] varchar(2048) NULL, 
	[unit_price] float NULL, 
	[order_item_sk] varchar(8000) NULL, 
	[silver_processed_at] datetime2(6) NULL
);