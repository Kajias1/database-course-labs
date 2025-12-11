# Lost and Found Item Management System

## Project overview

This project implements the database management system for lost and found items.

Used stack:
- postgreSQL (version 12)
- psql (18.0, server 14.19)

Used tools:
- pgadmin 4

Project Structure:
```
final-project/
├─ lost_found_create.sql
├─ lost_found_sample_data.sql
├─ lost_found_schema_erd.json
└─ README.md
```

File overview:

`lost_found_create.sql` Creation of tables for database schema
`lost_found_sample_data.sql` Insertion of sample data
`lost_found_schema_erd.json` Saved schema for ER-Diagram tool for `pgadmin 4`

Tables are:
- user
- lost_report
- found_report
- match
- claim

## Run

Open psql tool and execute the following:

```
-- Creating database
CREATE DATABASE lost-and-found-item-db;

-- Connecting to database
\c lost-and-found-item-db;

-- Creating table schema
\i lost_found_create.sql

-- Inserting sample data
\i lost_found_sample_data.sql
```

