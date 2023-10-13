CREATE TABLE lte_data.crops (
	id smallint NOT NULL,
	crop_name text NOT null,
	crop_name_uri text NULL,
	scientific_name text NULL,
	scientific_name_uri text NULL,
	historic_name text NULL,
	CONSTRAINT crops_pk PRIMARY KEY (id), 
	CONSTRAINT crops_crop_name_unq unique (crop_name)
);