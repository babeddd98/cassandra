DROP TABLE data.MPG;
DROP KEYSPACE data;

CREATE KEYSPACE data
    WITH REPLICATION = {  
        'class' : 'NetworkTopologyStrategy',  
        'datacenter1' : 1  
    };

CREATE TABLE data.MPG (   
    M_mpg float,  
    M_cylinders float,
    M_displacement float,
    M_horsepower float,
    M_weight float,
    M_acceleration float,
    M_model_year int,
    M_origin int,
    M_car_name varchar,
    M_id UUID PRIMARY KEY,
    event_timestamp timestamp
);

COPY data.MPG ( M_mpg,  
                M_cylinders,
                M_displacement,
                M_horsepower,
                M_weight,
                M_acceleration,
                M_model_year,
                M_origin,
                M_car_name,
                M_id,
                event_timestamp) 
FROM 'mpg-dataset.csv' 
WITH HEADER = TRUE;

select * from data.MPG;
