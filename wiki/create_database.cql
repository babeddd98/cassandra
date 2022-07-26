DROP TABLE IF EXISTS data.wiki;
// DROP KEYSPACE data;

// CREATE KEYSPACE data
//     WITH REPLICATION = {  
//         'class' : 'NetworkTopologyStrategy',  
//         'datacenter1' : 1  
//     };

CREATE TABLE data.wiki (   
    w_user text,  
    w_name text,
    w_date date,
    w_changes int,
    w_id UUID PRIMARY KEY,
    event_timestamp timestamp
);

COPY data.wiki ( 
    w_user,  
    w_name,
    w_date,
    w_changes,
    w_id,
    event_timestamp) 
FROM 'wiki.csv' 
WITH HEADER = TRUE;

select * from data.wiki;
