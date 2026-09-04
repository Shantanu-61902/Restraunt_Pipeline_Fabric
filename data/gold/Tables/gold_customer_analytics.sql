CREATE TABLE [gold].[gold_customer_analytics] (

	[customer_id] varchar(8000) NULL, 
	[customer_name] varchar(8000) NULL, 
	[customer_city] varchar(8000) NULL, 
	[customer_segment] varchar(8000) NULL, 
	[orders] bigint NULL, 
	[lifetime_value] float NULL, 
	[avg_spend] float NULL, 
	[customer_type] varchar(8000) NULL
);