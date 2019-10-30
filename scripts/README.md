# Using these scripts

1. unzip the OS archive into osdata
2. run create-db.sh to create the sqlite database
3. run create-csv.sh to create places.csv
4. edit and run curate.sh to edit the list of names.

# Folder contents:

## create-csv.sh

Creates places.csv by extracing name, type and country from data.db.

## create-db.sh

Takes the data extraced into osdata\ and creates an sqlite3 database
called data.db.

## (curated.csv)

A pure list of names, one per line.

## curate.sh

Creates curated.csv from places.csv by removing

* long names
* duplicates
* all but English places
* non-ascii names
* type and country columns

## (data.db)

The orignal Ordinance Survey data in database form.

## osdata\

The folder where the Ordinance Survey zip should be extracted. It
should then contain two new folders: DATA and DOC

## (places.csv)

Names, type and country extracted from data.db. Type refers to the
dwelling type: City, Suburb, Town, Village, Hamlet etc
