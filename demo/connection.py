from cassandra.cluster import Cluster

clstr=Cluster()
session=clstr.connect()
session.execute("CQL query;")