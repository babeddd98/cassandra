DROP TABLE IF EXISTS test_type.types ;
DROP KEYSPACE IF EXISTS test_type ;

CREATE KEYSPACE test_type
    WITH REPLICATION = {  
        'class' : 'NetworkTopologyStrategy',  
        'datacenter1' : 1  
    };

CREATE TABLE test_type.test (
    b timestamp PRIMARY KEY
);

insert into test_type.test (b) values ('2005-10-02 11:06:00+0000');

select * from test_type.test;
