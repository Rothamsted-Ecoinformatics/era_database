CREATE TABLE lte_data.experiments (
	id smallint NOT NULL, -- align with eraGlibert
	field_id uuid not null,
	experiment_code text NOT NULL,
	experiment_uuid uuid not null,
	experiment_name text not null,
	boundary geometry(GEOMETRYCOLLECTION, 4326) null,
	constraint experiments_pk primary key (id),
	constraint experiments_field_id foreign key (field_id) references fields(id)
);