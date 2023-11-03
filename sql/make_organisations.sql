CREATE TABLE lte_data.organisations (
	id smallserial NOT NULL,
	organisation_name text NOT NULL,
	abbreviation text null,
	street_address text NULL,
	address_locality text NULL,
	address_region text NULL,
	address_country text NULL,
	postal_code text NULL,
	CONSTRAINT organisations_pk PRIMARY KEY (id)
);

comment on table lte_data.organisations is 'organisations stores information about the institutes dataset contributors are affiliated with.'