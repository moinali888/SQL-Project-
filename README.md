# SQL-Project-
- three SQL tables (Countries, Regions, and Locations) are well-structured.
- The region_id is the Primary Key in the Regions table and is used as a Foreign Key in the Countries table.
- The country_id is the Primary Key in the Countries table and is used as a Foreign Key in the Locations table.
- SQL database schema follows this relationship:

The Regions table contains:

region_id (Primary Key)
region_name
The Countries table contains:

country_id (Primary Key)
country_name
region_id (Foreign Key referencing Regions.region_id)
The Locations table contains:

location_id (Primary Key)
location_name
country_id (Foreign Key referencing Countries.country_id)

