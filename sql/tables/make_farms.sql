CREATE TABLE lte_data.farms (
	id char(1) NOT NULL,
	farm_name text not null,
	organisation text NOT NULL,
	street_address text NOT NULL,
	address_locality text NOT NULL,
	address_region text NOT NULL,
	address_country text NOT NULL,
	postal_code text NOT NULL,
	constraint farms_pk primary key (id)	
);