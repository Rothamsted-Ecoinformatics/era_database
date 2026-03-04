-- Here organisation should be an organisation_id
CREATE TABLE lte_data.farms (
	id char(1) NOT NULL,
	farm_name text not null,
	organisation_id int2 null,
	street_address text NOT NULL,
	address_locality text NOT NULL,
	address_region text NOT NULL,
	address_country text NOT NULL,
	postal_code text NOT NULL,
	constraint farms_pk primary key (id),
	constraint farms_organisation_id_fk foreign key (organisation_id) references lte_data.organisations(id)
);
