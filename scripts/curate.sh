#!/bin/bash

sqlite3 -csv -noheader <<EOF > curated.csv
.load /usr/lib/sqlite3/pcre.so
.import places.csv data

SELECT DISTINCT name
FROM data
WHERE LENGTH(name) < 16
AND name REGEXP "^[A-Za-z]*$"
AND country="England"
ORDER BY name
EOF
