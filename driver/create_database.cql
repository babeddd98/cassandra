DROP TABLE IF EXISTS data.driver;
// DROP KEYSPACE data;

// CREATE KEYSPACE data
//     WITH REPLICATION = {  
//         'class' : 'NetworkTopologyStrategy',  
//         'datacenter1' : 1  
//     };

CREATE TABLE data.driver (   
    driver_id int PRIMARY KEY,  
    trips_today int,
    earnings_today float,
    event_timestamp timestamp
);

BEGIN BATCH
INSERT INTO data.driver (driver_id, trips_today, earnings_today, event_timestamp) 
VALUES (101, 0, 0.00, '2021-09-17 00:00:00.000');
INSERT INTO data.driver (driver_id, trips_today, earnings_today, event_timestamp) 
VALUES (102, 1, 50.00, '2021-09-17 01:00:00.000');
INSERT INTO data.driver (driver_id, trips_today, earnings_today, event_timestamp) 
VALUES (103, 3, 142.00, '2021-09-17 02:00:00.000');
INSERT INTO data.driver (driver_id, trips_today, earnings_today, event_timestamp) 
VALUES (104, 4, 184.00, '2021-09-17 03:00:00.000');
INSERT INTO data.driver (driver_id, trips_today, earnings_today, event_timestamp) 
VALUES (105, 6, 238.00, '2021-09-17 04:00:00.000');
INSERT INTO data.driver (driver_id, trips_today, earnings_today, event_timestamp) 
VALUES (106, 8, 301.00, '2021-09-17 05:00:00.000');
APPLY BATCH;


select * from data.driver;
