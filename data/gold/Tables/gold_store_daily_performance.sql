CREATE TABLE [gold].[gold_store_daily_performance] (

	[store_id] varchar(8000) NULL, 
	[order_date] date NULL, 
	[revenue] float NULL, 
	[orders] bigint NULL, 
	[customers] bigint NULL, 
	[aov] float NULL
);