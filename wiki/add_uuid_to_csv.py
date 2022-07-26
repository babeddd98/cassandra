import csv
import uuid
import pandas as pd
from datetime import datetime

fin = open('smallwikipedia.csv', 'r')
fout = open('wiki.csv', 'w')

reader = csv.reader(fin, delimiter=',', quotechar='"')
writer = csv.writer(fout, delimiter=',', quotechar='"')

timestamp = pd.date_range(
    end=pd.Timestamp.now(), 
    periods=1, 
    freq='D')

firstrow = True
for row in reader:
    if firstrow:
        row.append('w_id')
        row.append('event_timestamp')
        firstrow = False
    else:
        row.append(uuid.uuid4())
        row.append(datetime.now())
    writer.writerow(row)

