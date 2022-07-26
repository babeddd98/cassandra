DROP TABLE IF EXISTS data.cac40;
// DROP KEYSPACE data;

// CREATE KEYSPACE data
//     WITH REPLICATION = {  
//         'class' : 'NetworkTopologyStrategy',  
//         'datacenter1' : 1  
//     };

CREATE TABLE data.cac40 (   
    c_date date,  
    c_open float,
    c_high float,
    c_low float,
    c_close float,
    c_adjclose float,
    c_volume float,
    c_id UUID PRIMARY KEY,
    event_timestamp timestamp
);

COPY data.cac40 ( 
    c_date,  
    c_open,
    c_high,
    c_low,
    c_close,
    c_adjclose,
    c_volume,
    c_id,
    event_timestamp) 
FROM 'cac40.csv' 
WITH HEADER = TRUE;

select * from data.cac40;
