create table loading.dataset_protocols_ldr (
	id serial not null,
	dataset_id int not null,
	protocol_type_id int2 NOT NULL,
	protocol_uri text NULL,
	protocol_description text NOT NULL,
	constraint dataset_protocols_pk primary key(id)
);