CREATE DATABASE stocks;

CREATE TABLE IF NOT EXISTS stocks.stock_intraday_1min
(interv STRING,output_size STRING,time_zone STRING,open DECIMAL(8,4),high DECIMAL(8,4),low DECIMAL(8,4),close DECIMAL(8,4),volume BIGINT )
PARTITIONED BY (ticker STRING,last_refreshed string,refreshed_at string)
STORED AS iceberg;

