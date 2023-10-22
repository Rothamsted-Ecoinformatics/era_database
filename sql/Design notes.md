# e-RA Database design notes
**Richard Ostler**

1. The e-RA database is metadata driven, that is the database is designed to capture metadata necessary to interpret the data.

## Table conventions

### Naming conventions

1. Table and column naming conventions are intended to be meaningful, therefore abbreviations and shorthands are not used.
2. All names are lowercase.
3. Name words are separated by an underscore (_).  
4. Primary keys are simply named 'id'.
5. Foreign keys are named after the singular form of the parent table and suffixed '_id'. i.e. an FK to a table name plots would be plot_id.
6. Table names are in plural form.
7. Column names are in single form.

### Terms tables

Terms tables are dimension tables which can be used to provide semantic annotation for records in a table. The records in a terms table are curated from existing ontologies where available. A term can either be preferred or alternative, and either can be used to map to a data record, but an alternative term must always have a reference to a preferred term. 

#### Term tables structure
Term tables generally follow the same format which is:

```sql
create table xxxxxx_terms (
	id smallserial not null,
	preferred_term_id int2 null,
	term_label text not null,
	term_uri text null,
	ontology_id text null,
	constraint xxxxxx_terms_pk primary key(id),
	constraint xxxxxx_terms_ontology_id foreign key (ontology_id) references ontologies(id),
    constraint xxxxxx_terms_uri_unq unique (term_uri)
);
```

The `term_uri` column is unqiue to prevent duplicates from being added. 

#### Why are there multiple terms tables even though they look the same?
The principle of separation of concerns is implemented, meaning that all entries in a term table are used in one and only context. While a single table can be appealing because all terms can be managed in one table, this table would have multiple FK relations to data tables where each related table should only reference a subset of values in the terms table. However, this could risk invalid terms could be applied. Separating terms into tables for specific uses removes this risk and ensures all terms listed are valid for any FK relationship.

### Plot Group Collections tables

The plot group collections tables are used to identify a group of plots related by some design feature of the experiment. Typically these are design features which have not been imposed on the plots through a statistical design feature such as a row, column or block, rather they are arbitrary groups. These tables are typically only relevant to te Classicals and other older experiments, with an example use case being Broadbalk strips and sections.

### Postgres datatype usage

The e-RA database is implemented in PostgreSQL. The following rules for using PostgreSQL datatypes should be followed
1. String data is stored in `text` datatypes. I PostgreSQL there is no performance advantage to using varchar over text. 
2. For variable length strings were a character limit is required then this shuld be implemented as a constraint rather than varchar(N). This makes is easier to alter the character limit.  
3. For fixed length characters, char(N) should be used.
4. For decimal numbers, numeric should be used.
5. For integers int2 and int should be used depending on anticipated size.
6. For UUIDs the UUID type should be used.