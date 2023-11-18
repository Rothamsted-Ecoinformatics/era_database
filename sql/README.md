# Introduction

This folder contains SQL scripts for building the Rothamsted Long-term Experiments database. 

The database SQL is written for Postgres with the PostGIS extension, but can be amended for other SQL databases.

## tables

SQL files for table creation. Each table has its own SQL DDL file. The DDL files include a create table statement with inline FK statements, therefore it is essential files are run in the correct order. The files also include comment on tables for adding table and column documentation.

## views

SQL files for creating standard views over the database.

## data

SQL files for inserting dimension table data. The data provided here is used within the Rothamsted implementation of this database. No field experiment data is included here.


