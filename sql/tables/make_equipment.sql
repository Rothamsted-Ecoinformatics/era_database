create table lte_data.equipment (
	id serial2 not null,
	equipment_type_term_id int2 not null,
	equipment_name text not null,
	manufacturer text null,
	model text null,
	reference_uri text null,
	notes text null,
	constraint equipment_pk primary key (id),
	constraint equipment_equipment_type_id_fk foreign key (equipment_type_term_id) references equipment_type_terms(id),
	constraint equipment_unq unique (equipment_name)
);

comment on table lte_data.equipment is 'equipment is used for manageing the list of equipment that can be used for farm management operations.';

comment on column lte_data.equipment.reference_uri is 'reference_uri is a link to an external resource to describe the equipment.';
