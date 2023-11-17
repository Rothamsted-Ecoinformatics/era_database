create table loading.datasets_ldr (
	id serial not null,
	experiment_id smallint not null,
	version_number SMALLINT NOT NULL,
	dataset_title text not null,
	date_from date null,
	date_to date null,
	date_precision char(2) not null,
	date_loaded timestamp not null,
	loaded_by text not null,
	dataset_description text null,
	version_history_notes text null,
	constraint dataset_pk primary key(id)
);
