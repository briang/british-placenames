#!/bin/bash

SRC_FOLDER="./osdata"
HEADERS="$SRC_FOLDER/DOC/OS_Open_Names_Header.csv"
DATA_GLOB="$SRC_FOLDER/DATA/*"
DB_FILE="data.db"
TABLE="data"

[[ -e $DB_FILE ]] && rm $DB_FILE

sqlite3 $DB_FILE ".mode csv" ".import $HEADERS $TABLE"

for F in $DATA_GLOB ; do
    echo "importing $F..."
    sqlite3 $DB_FILE ".mode csv" ".import $F $TABLE"
    sqlite3 $DB_FILE "select count(*) from $TABLE where type='populatedPlace'"
done
